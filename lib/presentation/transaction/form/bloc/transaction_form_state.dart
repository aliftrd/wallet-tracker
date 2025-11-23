part of 'transaction_form_bloc.dart';

@freezed
sealed class TransactionFormState with _$TransactionFormState, FormErrorsMixin {
  const TransactionFormState._();

  const factory TransactionFormState({
    int? transactionId,
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default(TransactionFormData()) TransactionFormData form,
    String? message,
    Map<String, dynamic>? errors,
  }) = _TransactionFormState;
}

@freezed
sealed class TransactionFormData with _$TransactionFormData {
  const TransactionFormData._();

  const factory TransactionFormData({
    int? id,
    TransactionType? type,
    CategoryEntity? category,
    WalletViewEntity? wallet,
    String? storeName,
    DateTime? date,
    String? note,
    String? taxAmount,
    String? totalAmount,
  }) = _TransactionFormData;
}
