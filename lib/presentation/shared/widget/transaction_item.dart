import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/presentation/transaction/detail/transaction_detail_page.dart';

class TransactionItem extends StatelessWidget {
  final TransactionViewEntity transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.color.primaryContainer,
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius(
          cornerRadius: Sizes.s16,
          cornerSmoothing: 1,
        ),
      ),
      child: InkWell(
        onTap: () => context.pushNamed(TransactionDetailPage.path, extra: transaction.id),
        borderRadius: BorderRadius.circular(Sizes.s16),
        child: Padding(
          padding: EdgeInsets.all(Sizes.s16),
          child: Row(
            spacing: Sizes.s10,
            children: [
              Material(
                color: transaction.category.color,
                borderRadius: BorderRadius.circular(Sizes.s16),
                child: Padding(
                  padding: EdgeInsets.all(Sizes.s10),
                  child: Icon(transaction.category.icon, color: Colors.white),
                ),
              ),
              Expanded(
                child: Column(
                  spacing: Sizes.s4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${transaction.category.name} - ${transaction.id}',
                      style: context.textTheme.bodyMedium,
                    ),
                    Text(
                      transaction.wallet,
                      style: context.textTheme.bodySmall?.copyWith(fontSize: FontSize.s13),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      transaction.date.formatDate(),
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
                    '${transaction.type.sign} ${transaction.totalAmount}',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: transaction.type.color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionItemSkeleton extends StatelessWidget {
  const TransactionItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: Container(
        padding: EdgeInsets.all(Sizes.s16),
        decoration: ShapeDecoration(
          color: context.color.primaryContainer,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: Sizes.s16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: Row(
          spacing: Sizes.s10,
          children: [
            Bone.square(size: 48, borderRadius: BorderRadius.circular(Sizes.s16)),
            Expanded(
              child: Column(
                spacing: Sizes.s4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Bone.text(words: 1),
                  Bone.text(words: 1),
                  Bone.text(words: 2),
                ],
              ),
            ),
            const Bone.text(words: 1),
          ],
        ),
      ),
    );
  }
}
