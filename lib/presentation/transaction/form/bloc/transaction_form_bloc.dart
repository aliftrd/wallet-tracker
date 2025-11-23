import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/entity/category/category_entity.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';
import 'package:waltrack/domain/repository/transaction/transaction_repository.dart';

part 'transaction_form_event.dart';
part 'transaction_form_state.dart';
part 'transaction_form_bloc.freezed.dart';

class TransactionFormBloc extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(const TransactionFormState()) {
    on<_InitializeEvent>(_onInitialize);
  }

  final TransactionRepository _transactionRepository = locator<TransactionRepository>();

  Future<void> _onInitialize(_InitializeEvent event, Emitter<TransactionFormState> emit) async {
    if (event.transactionId != null) {
      emit(
        state.copyWith(
          status: SubmissionStatus.loading,
          form: state.form.copyWith(id: event.transactionId),
        ),
      );
      final result = await _transactionRepository.fetchById(event.transactionId!);
      result.fold(
        (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message, errors: failure.errors)),
        (data) => emit(
          state.copyWith(
            status: SubmissionStatus.success,
            form: state.form.copyWith(
              id: data.id,
              type: data.type,
              category: data.category,
              storeName: data.storeName,
              note: data.note,
              taxAmount: data.taxAmount,
              totalAmount: data.totalAmount,
            ),
          ),
        ),
      );
    }
  }
}
