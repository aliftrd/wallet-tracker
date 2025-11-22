import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/presentation/shared/widget/transaction_item.dart';

class TransactionPage extends StatelessWidget {
  static const String path = '/transaction';
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Text(
          'Transaction',
          style: context.textTheme.headlineLarge?.copyWith(
            color: context.color.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s10),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
          itemBuilder: (context, index) {
            return const TransactionItem(
              category: 'Shopping',
              wallet: 'Wallet',
              amount: '+IDR 5000',
              date: '11/11/2025',
              color: Colors.red,
              icon: Icons.shopping_bag,
            );
          },
        ),
      ),
    );
  }
}
