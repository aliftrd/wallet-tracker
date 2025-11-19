import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/constant/endpoints.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource_ext.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_model.dart';

class WalletRemoteDatasource {
  final ApiClient _apiClient;

  WalletRemoteDatasource(this._apiClient);

  Future<Either<Failure, List<WalletModel>>> fetch() async => _apiClient.wallets.getList(Endpoints.wallets);
}
