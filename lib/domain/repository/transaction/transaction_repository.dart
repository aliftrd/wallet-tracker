import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/core/models/pagination_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_detail_entity.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';

abstract class TransactionRepository {
  Future<Either<Failure, PaginationEntity<TransactionViewEntity>>> fetch({int? page, String? type});
  Future<Either<Failure, TransactionDetailEntity>> fetchById(int id);
  Future<Either<Failure, void>> delete(int id);
}
