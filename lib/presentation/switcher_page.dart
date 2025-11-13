import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';

class SwitcherPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const SwitcherPage({
    super.key,
    required this.navigationShell,
  });

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          navigationShell,
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: navigationShell.currentIndex == 0 ? Assets.iconHomeFilled.toSvg() : Assets.iconHome.toSvg(),
                label: 'Home',
                onTap: () => _goBranch(0),
                isSelected: navigationShell.currentIndex == 0,
              ),
              BottomNavigationBarItem(
                icon: navigationShell.currentIndex == 1 ? Assets.iconWalletFilled.toSvg() : Assets.iconWallet.toSvg(),
                label: 'Wallet',
                onTap: () => _goBranch(1),
                isSelected: navigationShell.currentIndex == 1,
              ),
              BottomNavigationBarItem(
                icon: navigationShell.currentIndex == 2 ? Assets.iconTransactionFilled.toSvg() : Assets.iconTransaction.toSvg(),
                label: 'Transaction',
                onTap: () => _goBranch(2),
                isSelected: navigationShell.currentIndex == 2,
              ),
              BottomNavigationBarItem(
                icon: navigationShell.currentIndex == 4 ? Assets.iconProfileFilled.toSvg() : Assets.iconProfile.toSvg(),
                label: 'Profile',
                onTap: () => _goBranch(4),
                isSelected: navigationShell.currentIndex == 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  const BottomNavigationBar({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.defaultPadding,
            vertical: context.defaultPadding - 6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s32),
            color: context.color.primaryContainer,
            boxShadow: [
              BoxShadow(
                color: context.color.onPrimary.withValues(alpha: 0.15),
                offset: const Offset(0, 4),
                blurRadius: 16,
              ),
            ],
          ),
          child: Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items.map((item) => item.build(context)).toList(),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  const BottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  bool get isLabelVisible => label.isNotEmpty && isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Sizes.s8, horizontal: Sizes.s12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.s32),
          color: isSelected ? context.color.primary : Colors.transparent,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: context.color.onPrimary.withValues(alpha: 0.15),
                    offset: const Offset(0, 4),
                    blurRadius: 16,
                  ),
                ]
              : [],
        ),
        child: Row(
          spacing: 4,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            AnimatedSize(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: isLabelVisible
                  ? Text(
                      label,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: isSelected ? context.color.onPrimary : context.color.onPrimary.withValues(alpha: 0.5),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
