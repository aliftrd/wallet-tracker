import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';

class OverviewCard extends StatelessWidget {
  final String totalBalance;
  final String income;
  final String expense;

  const OverviewCard({
    super.key,
    required this.totalBalance,
    required this.income,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s10),
      padding: EdgeInsets.all(Sizes.s16),
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(Assets.imageOverviewMesh),
          fit: BoxFit.cover,
        ),
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 16,
            cornerSmoothing: 1,
          ),
        ),
      ),
      child: Column(
        spacing: Sizes.s16,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            spacing: Sizes.s4,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Balance',
                style: context.textTheme.labelSmall,
              ),
              Text(
                totalBalance,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            spacing: Sizes.s16,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  spacing: Sizes.s4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Income',
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      income,
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  spacing: Sizes.s4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Expense',
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      expense,
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
