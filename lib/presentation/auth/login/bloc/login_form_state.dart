part of 'login_form_bloc.dart';

@freezed
sealed class LoginFormState with _$LoginFormState, SubmissionStatusMixin, FormErrorsMixin {
  const LoginFormState._();

  const factory LoginFormState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default(LoginFormData()) LoginFormData form,
    @Default(false) bool isPasswordVisible,
    String? message,
    Map<String, dynamic>? errors,
  }) = _LoginFormState;
}

@freezed
sealed class LoginFormData with _$LoginFormData {
  const LoginFormData._();

  const factory LoginFormData({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginFormData;
}
