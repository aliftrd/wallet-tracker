import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/core/models/paginated_list_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';

abstract class TransactionRepository {
  Future<Either<Failure, PaginatedListEntity<TransactionViewEntity>>> fetch({Map<String, dynamic>? queryParams});
  Future<Either<Failure, TransactionViewEntity>> fetchById(int id);
}
