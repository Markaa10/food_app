part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory SignUpFormEvent.emailChanged(String emailAddressStr) =
      _EmailChanged;
  const factory SignUpFormEvent.phoneChanged(String phoneStr) = _PhoneChanged;
  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory SignUpFormEvent.signUpWithEmailAndPasswordPressed() =
      _SignUpWithEmailAndPasswordPressed;
  const factory SignUpFormEvent.signUpWithGooglePressed() =
      _SignUpWithGooglePressed;
}
