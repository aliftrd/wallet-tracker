part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String email) = _EmailChangedEvent;
  const factory LoginFormEvent.passwordChanged(String password) = _PasswordChangedEvent;
  const factory LoginFormEvent.passwordVisibilityChanged(bool isVisible) = _PasswordVisibilityChangedEvent;
  const factory LoginFormEvent.login() = _LoginEvent;
}
