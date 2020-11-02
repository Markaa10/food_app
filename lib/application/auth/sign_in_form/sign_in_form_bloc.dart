import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_app/domain/auth/auth_failure.dart';
import 'package:food_app/domain/auth/i_auth_facade.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.emailAddressStr,
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.passwordStr,
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          email: state.emailAddress,
          password: state.password,
        );

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }
}
