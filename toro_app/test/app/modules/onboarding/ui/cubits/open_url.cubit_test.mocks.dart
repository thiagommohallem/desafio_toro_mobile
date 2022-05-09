// Mocks generated by Mockito 5.1.0 from annotations
// in toro_app/test/app/modules/onboarding/ui/cubits/open_url.cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:toro_app/app/modules/onboarding/domain/errors/open_url_exception.dart'
    as _i5;
import 'package:toro_app/app/modules/onboarding/presenters/usecases/open_url.usecase.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IOpenUrlUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOpenUrlUsecase extends _i1.Mock implements _i3.IOpenUrlUsecase {
  MockIOpenUrlUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.OpenUrlException, bool>> call(String? url) =>
      (super.noSuchMethod(Invocation.method(#call, [url]),
              returnValue: Future<_i2.Either<_i5.OpenUrlException, bool>>.value(
                  _FakeEither_0<_i5.OpenUrlException, bool>()))
          as _i4.Future<_i2.Either<_i5.OpenUrlException, bool>>);
}
