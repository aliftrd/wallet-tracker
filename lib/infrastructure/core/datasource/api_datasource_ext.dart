import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource.dart';
import 'package:waltrack/infrastructure/core/models/base_pagination.dart';
import 'package:waltrack/infrastructure/model/auth/auth_model.dart';
import 'package:waltrack/infrastructure/model/transaction/transaction_detail_model.dart';
import 'package:waltrack/infrastructure/model/transaction/transaction_view_model.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_view_model.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_detail_model.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthModel> get nativeEmailSignIn => ApiDataSource<AuthModel>(this, AuthModel.fromJson);
  // ApiDataSource<void> get register => ApiD ataSource<void>(this, (json) => json);
  ApiDataSource<UserModel> get me => ApiDataSource<UserModel>(this, UserModel.fromJson);
  ApiDataSource<void> get logout => ApiDataSource<void>(this, (json) => json);

  /// WALLET ENTITY
  ApiDataSource<WalletViewModel> get wallets => ApiDataSource<WalletViewModel>(this, WalletViewModel.fromJson);
  ApiDataSource<WalletDetailModel> get walletDetail => ApiDataSource<WalletDetailModel>(this, WalletDetailModel.fromJson);
  ApiDataSource<void> get deleteWallet => ApiDataSource<void>(this, (json) => json);

  /// TRANSACTION
  ApiDataSource<BasePagination<TransactionViewModel>> get transactions => ApiDataSource<BasePagination<TransactionViewModel>>(
    this,
    (json) => json.toPagination(TransactionViewModel.fromJson),
  );
  ApiDataSource<TransactionDetailModel> get transactionDetail => ApiDataSource<TransactionDetailModel>(this, TransactionDetailModel.fromJson);
}
