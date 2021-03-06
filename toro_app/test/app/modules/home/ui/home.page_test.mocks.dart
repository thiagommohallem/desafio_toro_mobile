// Mocks generated by Mockito 5.1.0 from annotations
// in toro_app/test/app/modules/home/ui/home.page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:bloc/bloc.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:toro_app/app/modules/home/presenters/blocs/quotes_bloc.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeQuotesState_0 extends _i1.Fake implements _i2.QuotesState {}

/// A class which mocks [QuotesBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuotesBloc extends _i1.Mock implements _i2.QuotesBloc {
  MockQuotesBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.QuotesState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeQuotesState_0()) as _i2.QuotesState);
  @override
  _i3.Stream<_i2.QuotesState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i2.QuotesState>.empty())
          as _i3.Stream<_i2.QuotesState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  _i3.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  void add(_i2.QuotesEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i2.QuotesEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i2.QuotesState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i2.QuotesEvent>(
          _i4.EventHandler<E, _i2.QuotesState>? handler,
          {_i4.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i4.Transition<_i2.QuotesEvent, _i2.QuotesState>? transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  void onChange(_i4.Change<_i2.QuotesState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}
