import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/constant/endpoints.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource_ext.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/core/models/base_pagination.dart';
import 'package:waltrack/infrastructure/model/transaction/transaction_detail_model.dart';
import 'package:waltrack/infrastructure/model/transaction/transaction_view_model.dart';

/// [INTERFACE]
abstract class TransactionRemoteDatasource {
  Future<Either<Failure, BasePagination<TransactionViewModel>>> fetch({int? page, String? type});
  Future<Either<Failure, TransactionDetailModel>> fetchById(int id);
  Future<Either<Failure, void>> delete(int id);
}

/// [IMPLEMENTATION]
class TransactionRemoteDatasourceImpl implements TransactionRemoteDatasource {
  final ApiClient apiClient;

  TransactionRemoteDatasourceImpl(this.apiClient);

  @override
  Future<Either<Failure, BasePagination<TransactionViewModel>>> fetch({int? page, String? type}) async {
    final queryParams = {
      'page': page,
      'type': type,
    };

    final response = await apiClient.transactions.get(Endpoints.transactions, queryParams: queryParams);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data),
    );
  }

  @override
  Future<Either<Failure, TransactionDetailModel>> fetchById(int id) async => await apiClient.transactionDetail.get('${Endpoints.transactions}/$id');

  @override
  Future<Either<Failure, void>> delete(int id) async => await apiClient.transactions.delete('${Endpoints.transactions}/$id');
}
