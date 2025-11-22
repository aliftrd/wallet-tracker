part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.fetch() = _FetchEvent;
  const factory WalletEvent.delete(int walletId) = _DeleteEvent;
}
