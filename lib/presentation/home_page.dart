import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/presentation/shared/avatar.dart';
import 'package:waltrack/presentation/home/widget/overview_card.dart';
import 'package:waltrack/presentation/shared/transaction_item.dart';
import 'package:waltrack/presentation/transaction_page.dart';

class HomePage extends StatelessWidget {
  static const String path = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Sizes.s80,
        elevation: 0,
        scrolledUnderElevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Sizes.s16),
            child: Row(
              spacing: Sizes.s10,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Avatar(radius: Sizes.s24, photoUrl: 'https://ui-avatars.com/api/?name=alif'),
                Column(
                  spacing: Sizes.s4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi! Alif.',
                      style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome to Waltrack AI',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OverviewCard(
              totalBalance: 'IDR 100,000',
              income: 'IDR 100,000',
              expense: 'IDR 100,000',
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s10),
              child: Column(
                spacing: Sizes.s16,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: Sizes.s10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Transactions',
                        style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () => context.goNamed(TransactionPage.path),
                        child: Text(
                          'See All',
                          style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: context.color.primary),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  ListView.separated(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
                    itemBuilder: (context, index) {
                      return const TransactionItem(
                        category: 'Shopping',
                        wallet: 'Wallet',
                        amount: '+IDR 5000',
                        date: '11 Nov 2025, 13:53',
                        color: Colors.red,
                        icon: Icons.shopping_bag,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
