import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/presentation/auth/login/login_page.dart';

class WelcomePage extends StatelessWidget {
  static const String path = '/welcome';
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(Sizes.s16),
          child: Column(
            spacing: Sizes.s16,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: context.textTheme.headlineLarge?.copyWith(color: context.color.onPrimary),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => context.goNamed(LoginPage.path),
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
