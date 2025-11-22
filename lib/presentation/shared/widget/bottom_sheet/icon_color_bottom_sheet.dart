import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/icon_colors.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/presentation/shared/widget/button/custom_button_primary.dart';

class IconColor {
  final IconData icon;
  final Color color;

  IconColor({required this.icon, required this.color});
}

class IconColorBottomSheet extends StatefulWidget {
  final IconData? icon;
  final Color? color;

  const IconColorBottomSheet({
    super.key,
    this.icon,
    this.color,
  });

  static Future<IconColor?> show({
    required BuildContext context,
    IconData? icon,
    Color? color,
  }) async {
    return showModalBottomSheet<IconColor>(
      enableDrag: false,
      isDismissible: false,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: true,
      context: context,
      builder: (context) => IconColorBottomSheet(icon: icon, color: color),
    );
  }

  @override
  State<IconColorBottomSheet> createState() => _IconColorBottomSheetState();
}

class _IconColorBottomSheetState extends State<IconColorBottomSheet> {
  late IconData selectedIcon;
  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    selectedIcon = widget.icon ?? randomIcon;
    selectedColor = widget.color ?? randomColor;
  }

  Padding _buildLabel(String label) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
      child: Text(label, style: context.textTheme.bodyLarge),
    );
  }

  Padding _buildHeader(Function()? onClose) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Text(
              Constants.ICON_COLOR_TITLE,
              style: context.textTheme.headlineMedium,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: onClose,
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreview() {
    return Material(
      color: selectedColor,
      shape: const CircleBorder(),
      child: Padding(
        padding: EdgeInsets.all(Sizes.s12),
        child: Icon(
          selectedIcon,
          color: context.color.onPrimary,
          size: Sizes.s32,
        ),
      ),
    );
  }

  // Tampilkan warna dalam baris (row) berdasarkan shade ke bawah, scroll horizontal
  SingleChildScrollView _buildColorSelector() {
    const int shadesPerColor = 3;
    final int colorGroups = categoryColors.length ~/ shadesPerColor;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: Sizes.s4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(colorGroups, (groupIdx) {
          return Column(
            spacing: Sizes.s4,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(shadesPerColor, (shadeIdx) {
              final color = categoryColors[groupIdx * shadesPerColor + shadeIdx];
              return Material(
                color: color,
                shape: const CircleBorder(),
                child: InkWell(
                  onTap: () => setState(() => selectedColor = color),
                  customBorder: const CircleBorder(),
                  child: const SizedBox(width: 32, height: 32),
                ),
              );
            }),
          );
        }),
      ),
    );
  }

  SingleChildScrollView _buildIconSelector() {
    return SingleChildScrollView(
      child: Column(
        spacing: Sizes.s12,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildIconSection(Constants.ICON_COLOR_FINANCE, financeIcon),
          _buildIconSection(Constants.ICON_COLOR_SHOPPING, shoppingIcon),
          _buildIconSection(Constants.ICON_COLOR_HOME_UTILITY, homeUtilityIcons),
          _buildIconSection(Constants.ICON_COLOR_TRANSPORT_TRAVEL, transportTravelIcons),
          _buildIconSection(Constants.ICON_COLOR_FOOD_DRINK, foodDrinkIcons),
          _buildIconSection(Constants.ICON_COLOR_HEALTH_LIFESTYLE, healthLifestyleIcons),
          _buildIconSection(Constants.ICON_COLOR_ENTERTAINMENT, entertainmentIcons),
          _buildIconSection(Constants.ICON_COLOR_WORK, workIcons),
          _buildIconSection(Constants.ICON_COLOR_OTHER, otherIcons),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: Sizes.s12,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(() => context.pop()),
          _buildPreview(),
          _buildColorSelector(),
          Expanded(child: _buildIconSelector()),
          CustomButtonPrimary(
            onPress: () {
              final newIconColor = IconColor(
                icon: selectedIcon,
                color: selectedColor,
              );
              context.pop(newIconColor);
            },
            text: 'Save',
            margin: EdgeInsets.symmetric(
              horizontal: Sizes.s16,
              vertical: Sizes.s12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconSection(String label, List<IconData> icons) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel(label),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s16),
          itemCount: icons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) => InkWell(
            onTap: () => setState(() => selectedIcon = icons[index]),
            customBorder: const CircleBorder(),
            child: Icon(icons[index]),
          ),
        ),
      ],
    );
  }
}
