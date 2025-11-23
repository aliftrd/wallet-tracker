import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/core/models/paginated_list_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/domain/repository/transaction/transaction_repository.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/datasource/transaction/transaction_remote_datasource.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDatasource _transactionRemoteDatasource;

  TransactionRepositoryImpl(this._transactionRemoteDatasource);

  @override
  Future<Either<Failure, PaginatedListEntity<TransactionViewEntity>>> fetch({Map<String, dynamic>? queryParams}) async {
    final response = await _transactionRemoteDatasource.fetch(queryParams: queryParams);

    return response.fold(
      (failure) => left(failure),
      (model) {
        return right(
          PaginatedListEntity<TransactionViewEntity>(
            data: model.data.map((e) => e.toEntity()).toList(),
            links: PaginatedListLinks(
              first: model.links.first,
              last: model.links.last,
              prev: model.links.prev,
              next: model.links.next,
            ),
            meta: PaginatedListMeta(
              currentPage: model.meta.currentPage,
              currentPageUrl: model.meta.currentPageUrl,
              from: model.meta.from,
              path: model.meta.path,
              perPage: model.meta.perPage,
              to: model.meta.to,
            ),
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, TransactionViewEntity>> fetchById(int id) async {
    final response = await _transactionRemoteDatasource.fetchById(id);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data.toEntity()),
    );
  }
}
