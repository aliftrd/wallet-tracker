part of 'wallet_form_bloc.dart';

@freezed
sealed class WalletFormState with _$WalletFormState {
  const WalletFormState._();

  const factory WalletFormState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default(WalletFormData()) WalletFormData form,
    String? message,
    Map<String, dynamic>? errors,
  }) = _WalletFormState;
}

@freezed
sealed class WalletFormData with _$WalletFormData {
  const WalletFormData._();

  const factory WalletFormData({
    int? id,
    String? name,
    @Default(0) int balance,
    Color? color,
    IconData? icon,
  }) = _WalletFormData;

  Color get colorOrRandom => color ?? icon_colors.randomColor;
  IconData get iconOrRandom => icon ?? icon_colors.randomIcon;
}
