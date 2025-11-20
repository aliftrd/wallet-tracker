import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';

part 'wallet_form_event.dart';
part 'wallet_form_state.dart';
part 'wallet_form_bloc.freezed.dart';

class WalletFormBloc extends Bloc<WalletFormEvent, WalletFormState> {
  WalletFormBloc() : super(const WalletFormState()) {
    on<_InitializeEvent>(_onInitialize);
    on<_SubmitEvent>(_onSubmit);
  }

  final WalletRepository _walletRepository = locator<WalletRepository>();

  Future<void> _onInitialize(_InitializeEvent event, Emitter<WalletFormState> emit) async {
    emit(state.copyWith(selectedWalletId: event.walletId));

    if (event.walletId != null) {
      final result = await _walletRepository.fetchById(event.walletId!);
      result.fold(
        (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message, errors: failure.errors)),
        (data) => emit(
          state.copyWith(
            form: WalletFormData(name: data.name, balance: data.balance),
          ),
        ),
      );
    }
  }

  Future<void> _onSubmit(_SubmitEvent event, Emitter<WalletFormState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading, message: null, errors: {}));

    // final result = await _walletRepository.submit(state.form);
    // result.fold(
    //   (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message, errors: failure.errors)),
    //   (user) => emit(state.copyWith(status: SubmissionStatus.success)),
    // );
  }
}
