import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/theme/app_theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes.setScreenAwareConstant(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      routerConfig: locator<GoRouter>(),
    );
  }
}
