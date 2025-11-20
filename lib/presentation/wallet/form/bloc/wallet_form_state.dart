part of 'wallet_form_bloc.dart';

@freezed
sealed class WalletFormState with _$WalletFormState, SubmissionStatusMixin {
  const WalletFormState._();

  const factory WalletFormState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    int? selectedWalletId,
    @Default(WalletFormData()) WalletFormData form,
    String? message,
    Map<String, dynamic>? errors,
  }) = _WalletFormState;
}

@freezed
sealed class WalletFormData with _$WalletFormData {
  const WalletFormData._();

  const factory WalletFormData({
    @Default('') String? name,
    @Default(0) int? balance,
  }) = _WalletFormData;
}
