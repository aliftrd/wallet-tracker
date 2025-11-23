import 'package:get_it/get_it.dart';
import 'package:waltrack/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:waltrack/infrastructure/datasource/auth/auth_remote_datasource.dart';
import 'package:waltrack/infrastructure/datasource/transaction/transaction_remote_datasource.dart';
import 'package:waltrack/infrastructure/datasource/wallet/wallet_remote_datasource.dart';

/// Data sources module note
/// REGISTER SINGLETON -> RETURN SAME INSTANCE
/// REGISTER FACTORY   -> RETURN NEW INSTANCE

Future<void> initDatasourceModule(GetIt locator) async {
  /// [AuthDataSource]
  locator.registerLazySingleton<AuthLocalDatasource>(() => AuthLocalDatasourceImpl(locator()));
  locator.registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasourceImpl(locator()));

  /// [WalletDataSource]
  locator.registerLazySingleton<WalletRemoteDatasource>(() => WalletRemoteDatasourceImpl(locator()));

  /// [TransactionDataSource]
  locator.registerLazySingleton<TransactionRemoteDatasource>(() => TransactionRemoteDatasourceImpl(locator()));
}
