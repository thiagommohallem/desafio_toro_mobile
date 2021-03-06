import 'dart:async';

import 'package:toro_app/app/modules/home/infra/datasources/quotes.datasource.dart';
import 'package:toro_app/app/modules/home/infra/model/stock.model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class QuotesDatasourceImpl implements QuotesDatasource {
  final WebSocketChannel channel;

  final StreamController<Stock> _streamController =
      StreamController<Stock>.broadcast();

  QuotesDatasourceImpl(this.channel);

  @override
  Future<Stream<Stock>> retrieveQuotes() async {
    channel.stream.listen(
      (event) {
        String message = event.toString();
        String messageWithoutBrackets =
            message.substring(1, message.length - 2);
        String stockMessage = messageWithoutBrackets.split(',')[0];
        String stockName = stockMessage.split(':')[0].replaceAll("\"", "");
        double stockValue = double.parse(stockMessage.split(':')[1].trim());
        double timestamp = double.parse(
            messageWithoutBrackets.split(',')[1].split(':')[1].trim());
        Map<String, dynamic> stockAsMap = {
          'id': stockName,
          'value': stockValue,
          'timestamp': timestamp.toInt() * 1000,
        };
        _streamController.sink.add(Stock.fromJson(stockAsMap));
      },
      onError: (e) {
        _streamController.close();
        channel.sink.close();
      },
      onDone: () {
        _streamController.close();
        channel.sink.close();
      },
    );
    return _streamController.stream;
  }

  @override
  dispose() {
    _streamController.close();
    channel.sink.close();
  }
}
