import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/presentation/auth/login/login_page.dart';

class SplashPage extends StatefulWidget {
  static const String path = '/';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.pushReplacement(LoginPage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
