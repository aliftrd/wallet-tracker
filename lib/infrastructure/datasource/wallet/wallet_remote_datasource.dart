import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/constant/endpoints.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource_ext.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_detail_model.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_form_model.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_view_model.dart';

/// [INTERFACE]
abstract class WalletRemoteDatasource {
  Future<Either<Failure, List<WalletViewModel>>> fetch();
  Future<Either<Failure, WalletDetailModel>> fetchById(int walletId);
  Future<Either<Failure, WalletViewModel>> create(WalletFormModel formData);
  Future<Either<Failure, WalletViewModel>> update(int walletId, WalletFormModel formData);
  Future<Either<Failure, void>> delete(int walletId);
}

/// [IMPLEMENTATION]
class WalletRemoteDatasourceImpl implements WalletRemoteDatasource {
  final ApiClient _apiClient;

  WalletRemoteDatasourceImpl(this._apiClient);

  @override
  Future<Either<Failure, List<WalletViewModel>>> fetch() async => _apiClient.wallets.getList(Endpoints.wallets);

  @override
  Future<Either<Failure, WalletDetailModel>> fetchById(int walletId) async => _apiClient.walletDetail.get('${Endpoints.wallets}/$walletId');

  @override
  Future<Either<Failure, WalletViewModel>> create(WalletFormModel formData) async => _apiClient.wallets.post(
    Endpoints.wallets,
    formData.toJson(),
  );

  @override
  Future<Either<Failure, WalletViewModel>> update(int walletId, WalletFormModel formData) async => _apiClient.wallets.put(
    '${Endpoints.wallets}/$walletId',
    formData.toJson(),
  );

  @override
  Future<Either<Failure, void>> delete(int walletId) async => _apiClient.deleteWallet.delete('${Endpoints.wallets}/$walletId');
}
