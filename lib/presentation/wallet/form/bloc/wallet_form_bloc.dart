import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/constant/icon_colors.dart' as icon_colors;
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';

part 'wallet_form_event.dart';
part 'wallet_form_state.dart';
part 'wallet_form_bloc.freezed.dart';

class WalletFormBloc extends Bloc<WalletFormEvent, WalletFormState> {
  WalletFormBloc() : super(const WalletFormState()) {
    on<_InitializeEvent>(_onInitialize);
    on<_NameChangedEvent>(_onNameChanged);
    on<_BalanceChangedEvent>(_onBalanceChanged);
    on<_ColorAndIconChangedEvent>(_onColorAndIconChanged);
    on<_SubmitEvent>(_onSubmit);
  }

  final WalletRepository _walletRepository = locator<WalletRepository>();

  Future<void> _onInitialize(_InitializeEvent event, Emitter<WalletFormState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.initial));

    if (event.walletId != null) {
      emit(state.copyWith(status: SubmissionStatus.loading));
      final result = await _walletRepository.fetchById(event.walletId!);
      result.fold(
        (failure) => emit(
          state.copyWith(
            status: SubmissionStatus.failure,
            message: failure.message,
            errors: failure.errors,
          ),
        ),
        (data) => emit(
          state.copyWith(
            status: SubmissionStatus.success,
            form: WalletFormData(
              id: data.id,
              name: data.name,
              balance: data.balance,
              color: data.color,
              icon: data.icon,
            ),
          ),
        ),
      );
    }
  }

  Future<void> _onNameChanged(_NameChangedEvent event, Emitter<WalletFormState> emit) async {
    emit(state.copyWith(form: state.form.copyWith(name: event.name)));
  }

  Future<void> _onBalanceChanged(_BalanceChangedEvent event, Emitter<WalletFormState> emit) async {
    if (event.balance.isEmpty) {
      emit(state.copyWith(form: state.form.copyWith(balance: 0)));
    } else {
      emit(state.copyWith(form: state.form.copyWith(balance: event.balance.toNumericString())));
    }
  }

  Future<void> _onColorAndIconChanged(_ColorAndIconChangedEvent event, Emitter<WalletFormState> emit) async {
    emit(
      state.copyWith(
        form: state.form.copyWith(color: event.color, icon: event.icon),
      ),
    );
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
