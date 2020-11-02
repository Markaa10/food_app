import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_app/domain/auth/auth_failure.dart';
import 'package:food_app/domain/auth/i_auth_facade.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: e.usernameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.emailAddressStr,
          authFailureOrSuccessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: e.phoneStr,
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.passwordStr,
          authFailureOrSuccessOption: none(),
        );
      },
      signUpWithEmailAndPasswordPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          username: state.username,
          email: state.emailAddress,
          phone: state.phone,
          password: state.password,
        );

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signUpWithGooglePressed: (e) async* {
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
