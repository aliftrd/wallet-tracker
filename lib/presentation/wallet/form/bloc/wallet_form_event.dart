part of 'wallet_form_bloc.dart';

@freezed
class WalletFormEvent with _$WalletFormEvent {
  const factory WalletFormEvent.initialize(int? walletId) = _InitializeEvent;
  const factory WalletFormEvent.submit() = _SubmitEvent;
}
