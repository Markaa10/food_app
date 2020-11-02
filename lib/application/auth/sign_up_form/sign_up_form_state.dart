part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required String username,
    @required String emailAddress,
    @required String password,
    @required String phone,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        username: '',
        emailAddress: '',
        password: '',
        phone: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
