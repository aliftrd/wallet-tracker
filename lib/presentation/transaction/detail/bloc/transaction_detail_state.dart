part of 'transaction_detail_bloc.dart';

@freezed
sealed class TransactionDetailState with _$TransactionDetailState, SubmissionStatusMixin {
  const TransactionDetailState._();

  const factory TransactionDetailState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default(TransactionOperation.none) TransactionOperation operation,
    TransactionDetailEntity? data,
    String? message,
  }) = _TransactionDetailState;
}

enum TransactionOperation {
  none,
  load,
  delete,
}
