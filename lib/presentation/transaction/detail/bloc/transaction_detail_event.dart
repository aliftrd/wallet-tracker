part of 'transaction_detail_bloc.dart';

@freezed
sealed class TransactionDetailEvent with _$TransactionDetailEvent {
  const factory TransactionDetailEvent.initialize(int transactionId) = _InitializeEvent;
  const factory TransactionDetailEvent.edit() = _EditEvent;
  const factory TransactionDetailEvent.delete() = _DeleteEvent;
}
