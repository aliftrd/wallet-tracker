import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/core/models/pagination_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/domain/repository/transaction/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState()) {
    on<_FetchEvent>(_onFetch);
    on<_LoadMoreEvent>(_onLoadMore);
  }

  final TransactionRepository _trxRepository = locator<TransactionRepository>();

  Future<void> _onFetch(_FetchEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading));

    final result = await _trxRepository.fetch();

    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message)),
      (data) => emit(
        state.copyWith(
          status: SubmissionStatus.success,
          transactions: data.data,
          meta: data.meta,
        ),
      ),
    );
  }

  Future<void> _onLoadMore(_LoadMoreEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(loadMoreStatus: SubmissionStatus.loading));

    final result = await _trxRepository.fetch(page: state.meta?.nextPage, type: state.type);

    result.fold(
      (failure) => emit(state.copyWith(loadMoreStatus: SubmissionStatus.failure, message: failure.message)),
      (data) => emit(
        state.copyWith(
          loadMoreStatus: SubmissionStatus.success,
          transactions: [...state.transactions, ...data.data],
          meta: data.meta,
        ),
      ),
    );
  }
}
