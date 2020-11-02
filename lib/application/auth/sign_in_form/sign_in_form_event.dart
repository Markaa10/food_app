part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailAddressStr) =
      _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}
