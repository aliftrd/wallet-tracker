import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  static const String path = '/category';
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Category'),
      ),
    );
  }
}
