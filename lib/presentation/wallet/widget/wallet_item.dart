import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';

class WalletItem extends StatelessWidget {
  final WalletViewEntity wallet;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const WalletItem({
    super.key,
    required this.wallet,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.s16),
      decoration: ShapeDecoration(
        color: context.color.primaryContainer,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 16,
            cornerSmoothing: 1,
          ),
        ),
      ),
      child: Row(
        spacing: Sizes.s10,
        children: [
          Material(
            color: wallet.color,
            borderRadius: BorderRadius.circular(Sizes.s16),
            child: Padding(
              padding: EdgeInsets.all(Sizes.s10),
              child: Icon(wallet.icon, color: context.color.onPrimary),
            ),
          ),
          Expanded(
            child: Column(
              spacing: Sizes.s4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wallet.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium,
                ),
                Text(
                  wallet.balance,
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert, color: context.color.primary),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: onEdit,
                child: Row(
                  spacing: Sizes.s10,
                  children: [
                    Icon(Icons.edit, size: Sizes.s20, color: context.color.primary),
                    Text(Constants.CLICK_TO_ACTION_EDIT, style: context.textTheme.bodyMedium?.copyWith(color: context.color.primary)),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: onDelete,
                child: Row(
                  spacing: Sizes.s10,
                  children: [
                    Icon(Icons.delete_forever, size: Sizes.s20, color: context.color.error),
                    Text(Constants.CLICK_TO_ACTION_DELETE, style: context.textTheme.bodyMedium?.copyWith(color: context.color.error)),
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

class WalletItemSkeleton extends StatelessWidget {
  const WalletItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: Container(
        padding: EdgeInsets.all(Sizes.s16),
        decoration: ShapeDecoration(
          color: context.color.primaryContainer,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: Row(
          spacing: Sizes.s10,
          children: [
            Bone.square(size: 48, borderRadius: BorderRadius.circular(Sizes.s16)),
            Column(
              spacing: Sizes.s4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Bone.text(words: 1),
                Bone.text(words: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
