// Mocks generated by Mockito 5.1.0 from annotations
// in toro_app/test/app/modules/home/infra/repository/quotes.repository.impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:toro_app/app/modules/home/infra/datasources/quotes.datasource.dart'
    as _i2;
import 'package:toro_app/app/modules/home/infra/model/stock.model.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [QuotesDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuotesDatasource extends _i1.Mock implements _i2.QuotesDatasource {
  MockQuotesDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i3.Stream<_i4.Stock>> retrieveQuotes() => (super.noSuchMethod(
          Invocation.method(#retrieveQuotes, []),
          returnValue:
              Future<_i3.Stream<_i4.Stock>>.value(Stream<_i4.Stock>.empty()))
      as _i3.Future<_i3.Stream<_i4.Stock>>);
}
