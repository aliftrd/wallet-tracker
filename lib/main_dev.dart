import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:waltrack/bootstrap.dart';
import 'package:waltrack/applications/config/flavors.dart';
import 'package:waltrack/main_page.dart';
import 'package:waltrack/applications/di/application_module.dart' as di;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  Flavors.create(
    flavor: Flavor.DEVELOPMENT,
    baseUrl: 'https://dev-waltrack.aliftrd.my.id/api/v1',
  );
  await di.init();
  bootstrap(() => const MainPage());
}
