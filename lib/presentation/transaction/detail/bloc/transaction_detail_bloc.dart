import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/entity/transaction/transaction_detail_entity.dart';
import 'package:waltrack/domain/repository/transaction/transaction_repository.dart';

part 'transaction_detail_event.dart';
part 'transaction_detail_state.dart';
part 'transaction_detail_bloc.freezed.dart';

class TransactionDetailBloc extends Bloc<TransactionDetailEvent, TransactionDetailState> {
  TransactionDetailBloc() : super(const TransactionDetailState()) {
    on<_InitializeEvent>(_onInitialize);
    on<_EditEvent>(_onEdit);
    on<_DeleteEvent>(_onDelete);
  }

  final TransactionRepository _transactionRepository = locator<TransactionRepository>();

  Future<void> _onInitialize(_InitializeEvent event, Emitter<TransactionDetailState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading, operation: TransactionOperation.load));

    final result = await _transactionRepository.fetchById(event.transactionId);
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }

  Future<void> _onEdit(_EditEvent event, Emitter<TransactionDetailState> emit) async {
    // emit(state.copyWith(status: SubmissionStatus.loading, operation: TransactionOperation.edit));

    // final result = await _transactionRepository.update(event.transaction);
    // result.fold(
    //   (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message)),
    //   (data) => emit(state.copyWith(status: SubmissionStatus.success, message: Constants.TRANSACTION_UPDATED_MESSAGE)),
    // );
  }

  Future<void> _onDelete(_DeleteEvent event, Emitter<TransactionDetailState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading, operation: TransactionOperation.delete));

    if (state.data == null) return;

    final result = await _transactionRepository.delete(state.data!.id);
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success, message: Constants.TRANSACTION_DELETED_MESSAGE)),
    );
  }
}
