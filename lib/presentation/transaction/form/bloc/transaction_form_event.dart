part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialize(int? transactionId) = _InitializeEvent;
  const factory TransactionFormEvent.typeChanged(TransactionType type) = _TypeChangedEvent;
  const factory TransactionFormEvent.categoryChanged(CategoryEntity category) = _CategoryChangedEvent;
  const factory TransactionFormEvent.storeNameChanged(String storeName) = _StoreNameChangedEvent;
  const factory TransactionFormEvent.dateChanged(DateTime date) = _DateChangedEvent;
  const factory TransactionFormEvent.noteChanged(String note) = _NoteChangedEvent;
  const factory TransactionFormEvent.taxAmountChanged(String taxAmount) = _TaxAmountChangedEvent;
  const factory TransactionFormEvent.totalAmountChanged(String totalAmount) = _TotalAmountChangedEvent;
  const factory TransactionFormEvent.submit() = _SubmitEvent;
}
