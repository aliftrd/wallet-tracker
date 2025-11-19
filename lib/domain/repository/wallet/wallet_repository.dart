import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/entity/wallet/wallet_entity.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';

abstract class WalletRepository {
  Future<Either<Failure, List<WalletEntity>>> fetch();
}
