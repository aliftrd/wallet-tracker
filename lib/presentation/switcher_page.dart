import 'dart:io';

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

  bool get isAndroid => Platform.isAndroid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: isAndroid ? true : false,
        child: Stack(
          children: [
            navigationShell,
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Assets.iconHome.toSvg(),
                  activeIcon: Assets.iconHomeFilled.toSvg(),
                  label: 'Home',
                  onTap: () => _goBranch(0),
                  isSelected: navigationShell.currentIndex == 0,
                ),
                BottomNavigationBarItem(
                  icon: Assets.iconWallet.toSvg(),
                  activeIcon: Assets.iconWalletFilled.toSvg(),
                  label: 'Wallet',
                  onTap: () => _goBranch(1),
                  isSelected: navigationShell.currentIndex == 1,
                ),
                BottomNavigationBarItem(
                  icon: Assets.iconTransaction.toSvg(),
                  activeIcon: Assets.iconTransactionFilled.toSvg(),
                  label: 'Transaction',
                  onTap: () => _goBranch(2),
                  isSelected: navigationShell.currentIndex == 2,
                ),
                BottomNavigationBarItem(
                  icon: Assets.iconProfile.toSvg(),
                  activeIcon: Assets.iconProfileFilled.toSvg(),
                  label: 'Profile',
                  onTap: () => _goBranch(4),
                  isSelected: navigationShell.currentIndex == 4,
                ),
              ],
            ),
          ],
        ),
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

  bool get isAndroid => Platform.isAndroid;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: isAndroid ? Sizes.s16 : Sizes.s0),
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
            children: items,
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  final Widget icon;
  final Widget activeIcon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  const BottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  bool get isLabelVisible => label.isNotEmpty && isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isSelected ? null : onTap,
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
            isSelected ? activeIcon : icon,
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
