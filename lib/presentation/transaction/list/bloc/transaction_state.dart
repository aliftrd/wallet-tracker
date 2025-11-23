part of 'transaction_bloc.dart';

@freezed
sealed class TransactionState with _$TransactionState, SubmissionStatusMixin {
  const TransactionState._();

  const factory TransactionState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default(SubmissionStatus.initial) SubmissionStatus loadMoreStatus,
    @Default(null) String? type,
    @Default([]) List<TransactionViewEntity> transactions,
    PaginationMetaEntity? meta,
    String? message,
  }) = _TransactionState;
}
