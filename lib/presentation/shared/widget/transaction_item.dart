import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';

class TransactionItem extends StatelessWidget {
  final String category;
  final String wallet;
  final String amount;
  final String date;
  final Color color;
  final IconData icon;

  const TransactionItem({
    super.key,
    required this.category,
    required this.wallet,
    required this.amount,
    required this.date,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.s16),
      decoration: BoxDecoration(
        color: context.color.primaryContainer,
        borderRadius: BorderRadius.circular(Sizes.s16),
      ),
      child: Row(
        spacing: Sizes.s10,
        children: [
          Material(
            color: color,
            borderRadius: BorderRadius.circular(Sizes.s16),
            child: Padding(
              padding: EdgeInsets.all(Sizes.s10),
              child: const Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: Sizes.s4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: context.textTheme.bodyMedium,
                ),
                Text(
                  wallet,
                  style: context.textTheme.bodySmall?.copyWith(fontSize: FontSize.s13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  date,
                  style: context.textTheme.bodySmall?.copyWith(
                    fontSize: FontSize.s12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            spacing: Sizes.s4,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: context.textTheme.bodyMedium?.copyWith(color: Colors.green, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
