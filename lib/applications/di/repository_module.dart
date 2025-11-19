import 'package:get_it/get_it.dart';
import 'package:waltrack/domain/repository/auth/auth_repository.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';
import 'package:waltrack/infrastructure/repository/auth/auth_repository_impl.dart';
import 'package:waltrack/infrastructure/repository/wallet/wallet_repository_impl.dart';

/// Data sources module note
/// REGISTER SINGLETON -> RETURN SAME INSTANCE
/// REGISTER FACTORY   -> RETURN NEW INSTANCE

Future<void> initRepositoryModule(GetIt locator) async {
  /// [AuthRepository]
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(locator(), locator()));

  /// [WalletRepository]
  locator.registerLazySingleton<WalletRepository>(() => WalletRepositoryImpl(locator()));
}
