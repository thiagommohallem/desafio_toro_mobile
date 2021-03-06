import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toro_app/app/modules/home/data/datasource/quotes.datasource.impl.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'quotes.datasource.impl_test.mocks.dart';

@GenerateMocks([WebSocketChannel, WebSocketSink])
void main() {
  late QuotesDatasourceImpl _quotesDatasource;
  final MockWebSocketChannel _webSocketMock = MockWebSocketChannel();
  final MockWebSocketSink _webSocketSinkMock = MockWebSocketSink();
  setUpAll(() {
    _quotesDatasource = QuotesDatasourceImpl(_webSocketMock);
  });

  setUp(() {
    when(_webSocketMock.sink).thenReturn(_webSocketSinkMock);
    when(_webSocketSinkMock.close()).thenAnswer((_) async => true);
  });
  tearDown(() {
    reset(_webSocketSinkMock);
    reset(_webSocketMock);
  });

  group('QuotesDatasourceImpl tests...', () {
    test(
        'Should convert stock value as String to Map and return a new Stream of Stocks...',
        () async {
      when(_webSocketMock.stream).thenAnswer((_) => Stream.fromIterable(
          ['"CMIG3": 10.0, "timestamp": 1652020482.614692']));
      final stream = await _quotesDatasource.retrieveQuotes();
      stream.listen((event) {
        expectLater(event.id, "CMIG3");
      });
    });

    test('Should close channel sink on error...', () {
      when(_webSocketMock.stream)
          .thenAnswer((_) => Stream.fromIterable([throw Exception()]));
      _quotesDatasource.dispose();
      verify(_webSocketSinkMock.close()).called(1);
    });

    test('Should close channel sink on dispose...', () {
      _quotesDatasource.dispose();
      verify(_webSocketSinkMock.close()).called(1);
    });
  });
}
