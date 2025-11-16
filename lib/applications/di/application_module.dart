import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/config/router.dart';
import 'package:waltrack/applications/di/datasource_module.dart';
import 'package:waltrack/applications/di/repository_module.dart';
import 'package:waltrack/applications/services/hive_service.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';

final locator = GetIt.instance;

Future<void> init() async {
  /// init router
  locator.registerLazySingleton<GoRouter>(() => AppRouter.createRouter());

  /// init api client
  locator.registerLazySingleton<ApiClient>(() => ApiClient());

  /// init hive service
  locator.registerSingletonAsync<HiveService>(() async {
    final hiveService = HiveService();
    await hiveService.init();
    return hiveService;
  });

  /// init datasource
  await initDatasourceModule(locator);

  /// init repository
  await initRepositoryModule(locator);

  await locator.allReady();
}
