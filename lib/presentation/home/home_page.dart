import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/presentation/shared/bloc/auth/auth_bloc.dart';
import 'package:waltrack/presentation/shared/widget/avatar.dart';
import 'package:waltrack/presentation/home/widget/overview_card.dart';
import 'package:waltrack/presentation/shared/widget/transaction_item.dart';
import 'package:waltrack/presentation/transaction_page.dart';
import 'package:waltrack/presentation/wallet_page.dart';

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
        backgroundColor: context.color.surface,
        flexibleSpace: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
                child: Row(
                  spacing: Sizes.s10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Avatar(radius: Sizes.s24, photoUrl: state.user!.avatar),
                    Column(
                      spacing: Sizes.s4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(Constants.homeGreeting(state.user!.name), style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
                        Text(Constants.HOME_WELCOME_MESSAGE, style: context.textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
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
            Column(
              spacing: Sizes.s16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
                  child: Row(
                    spacing: Sizes.s10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wallet',
                        style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () => context.goNamed(WalletPage.path),
                        child: Text(
                          'See All',
                          style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: context.color.primary),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Sizes.s100,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: Sizes.s10),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          width: Sizes.s80,
                          decoration: ShapeDecoration(
                            color: context.color.primary,
                            shape: SmoothRectangleBorder(
                              borderRadius: SmoothBorderRadius(
                                cornerRadius: 16,
                                cornerSmoothing: 1,
                              ),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: Sizes.s32,
                            color: context.color.onPrimary,
                          ),
                        );
                      }
                      return Container(
                        width: Sizes.s150,
                        decoration: ShapeDecoration(
                          color: context.color.primaryContainer,
                          shape: SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius(
                              cornerRadius: 16,
                              cornerSmoothing: 1,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -20,
                              right: -20,
                              child: Icon(
                                Icons.wallet,
                                size: Sizes.s80,
                                color: context.color.primary.withValues(alpha: 0.5),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(Sizes.s16),
                              child: Column(
                                spacing: Sizes.s4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Wallet', style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400)),
                                  Text(
                                    'IDR 999,999,999',
                                    style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
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
