part of 'transaction_bloc.dart';

@freezed
sealed class TransactionState with _$TransactionState, SubmissionStatusMixin {
  const TransactionState._();

  const factory TransactionState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default([]) List<TransactionViewEntity> transactions,
    PaginatedListLinks? links,
    PaginatedListMeta? meta,
    String? message,
  }) = _TransactionState;
}
