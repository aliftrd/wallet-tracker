import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:waltrack/bootstrap.dart';
import 'package:waltrack/applications/config/flavors.dart';
import 'package:waltrack/main_page.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  Flavors.create(
    flavor: Flavor.PRODUCTION,
    baseUrl: 'https://waltrack.aliftrd.my.id/api',
  );
  bootstrap(() => const MainPage());
}
