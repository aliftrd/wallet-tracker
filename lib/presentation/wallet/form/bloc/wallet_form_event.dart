part of 'wallet_form_bloc.dart';

@freezed
class WalletFormEvent with _$WalletFormEvent {
  const factory WalletFormEvent.initialize(int? walletId) = _InitializeEvent;
  const factory WalletFormEvent.nameChanged(String name) = _NameChangedEvent;
  const factory WalletFormEvent.balanceChanged(String balance) = _BalanceChangedEvent;
  const factory WalletFormEvent.colorAndIconChanged(Color color, IconData icon) = _ColorAndIconChangedEvent;
  const factory WalletFormEvent.submit() = _SubmitEvent;
}
