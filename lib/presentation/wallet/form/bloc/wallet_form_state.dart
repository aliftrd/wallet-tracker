part of 'wallet_form_bloc.dart';

@freezed
sealed class WalletFormState with _$WalletFormState, FormErrorsMixin {
  const WalletFormState._();

  const factory WalletFormState({
    int? walletId,
    @Default(SubmissionStatus.initial) SubmissionStatus formStatus,
    @Default(SubmissionStatus.initial) SubmissionStatus walletStatus,
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
}
