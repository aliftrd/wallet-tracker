import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/core/models/pagination_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_detail_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/domain/repository/transaction/transaction_repository.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/datasource/transaction/transaction_remote_datasource.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDatasource _transactionRemoteDatasource;

  TransactionRepositoryImpl(this._transactionRemoteDatasource);

  @override
  Future<Either<Failure, PaginationEntity<TransactionViewEntity>>> fetch({int? page, String? type}) async {
    final response = await _transactionRemoteDatasource.fetch(page: page, type: type);

    return response.fold(
      (failure) => left(failure),
      (model) {
        return right(
          PaginationEntity<TransactionViewEntity>(
            data: model.data.map((e) => e.toEntity()).toList(),
            meta: model.meta.toEntity(),
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, TransactionDetailEntity>> fetchById(int id) async {
    final response = await _transactionRemoteDatasource.fetchById(id);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> delete(int id) async {
    final response = await _transactionRemoteDatasource.delete(id);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data),
    );
  }
}
