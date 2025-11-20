import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/constant/endpoints.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource_ext.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_detail_model.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_view_model.dart';

/// [INTERFACE]
abstract class WalletRemoteDatasource {
  Future<Either<Failure, List<WalletViewModel>>> fetch();
  Future<Either<Failure, WalletDetailModel>> fetchById(int walletId);
}

/// [IMPLEMENTATION]
class WalletRemoteDatasourceImpl implements WalletRemoteDatasource {
  final ApiClient _apiClient;

  WalletRemoteDatasourceImpl(this._apiClient);

  @override
  Future<Either<Failure, List<WalletViewModel>>> fetch() async => _apiClient.wallets.getList(Endpoints.wallets);

  @override
  Future<Either<Failure, WalletDetailModel>> fetchById(int walletId) async => _apiClient.wallet.get('${Endpoints.wallets}/$walletId');
}
