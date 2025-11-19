import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/entity/wallet/wallet_entity.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/datasource/wallet/wallet_remote_datasource.dart';

class WalletRepositoryImpl implements WalletRepository {
  final WalletRemoteDatasource _walletRemoteDatasource;

  WalletRepositoryImpl(this._walletRemoteDatasource);

  @override
  Future<Either<Failure, List<WalletEntity>>> fetch() async {
    final response = await _walletRemoteDatasource.fetch();
    return response.fold(
      (failure) => left(failure),
      (data) => right(data.map((e) => e.toEntity()).toList()),
    );
  }
}
