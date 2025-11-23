part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.fetch() = _FetchEvent;
  const factory TransactionEvent.loadMore() = _LoadMoreEvent;
}
