import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/config/router.dart';

final locator = GetIt.instance;

Future<void> init() async {
  /// init router
  locator.registerLazySingleton<GoRouter>(() => AppRouter.createRouter());
}
