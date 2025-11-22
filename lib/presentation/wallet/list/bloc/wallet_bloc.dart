import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState()) {
    on<_FetchEvent>(_onFetch);
    on<_DeleteEvent>(_onDelete);
  }

  final WalletRepository _walletRepository = locator<WalletRepository>();

  Future<void> _onFetch(_FetchEvent event, Emitter<WalletState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading, message: null));

    final result = await _walletRepository.fetch();

    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, wallets: state.wallets)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success, wallets: data)),
    );
  }

  Future<void> _onDelete(_DeleteEvent event, Emitter<WalletState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading));

    final result = await _walletRepository.delete(event.walletId);

    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, wallets: state.wallets)),
      (data) {
        final removedWallets = state.wallets.where((wallet) => wallet.id != event.walletId).toList();

        emit(state.copyWith(status: SubmissionStatus.success, wallets: removedWallets, message: Constants.WALLET_DELETED_MESSAGE));
      },
    );
  }
}
