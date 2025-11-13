import 'package:flutter/material.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';

class ProfilePage extends StatelessWidget {
  static const String path = '/profile';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Text(
          'Profile',
          style: context.textTheme.headlineLarge?.copyWith(
            color: context.color.onPrimary,
          ),
        ),
      ),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
