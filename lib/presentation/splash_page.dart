import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/presentation/auth/login/login_page.dart';
import 'package:waltrack/presentation/home/home_page.dart';
import 'package:waltrack/presentation/shared/bloc/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  static const String path = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          Future.delayed(const Duration(seconds: 2)).then((value) {
            if (!context.mounted) return;
            return switch (state.status) {
              AuthStatus.authenticated => context.replaceNamed(HomePage.path),
              AuthStatus.unauthenticated => context.replaceNamed(LoginPage.path),
              _ => null,
            };
          });
        },
        child: const Center(
          child: Text('Splash'),
        ),
      ),
    );
  }
}
