part of 'wallet_bloc.dart';

@freezed
sealed class WalletState with _$WalletState, SubmissionStatusMixin {
  const WalletState._();

  const factory WalletState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    @Default([]) List<WalletViewEntity> wallets,
  }) = _WalletState;
}
