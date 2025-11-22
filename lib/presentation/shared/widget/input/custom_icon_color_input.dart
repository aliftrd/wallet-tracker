import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/presentation/shared/widget/bottom_sheet/icon_color_bottom_sheet.dart';

class CustomIconColorInput extends StatelessWidget {
  final String? label;
  final bool hiddenLabel;
  final bool isRequired;
  final IconData? icon;
  final Color? color;
  final bool isLoading;
  final Function(Color, IconData) onIconColorChanged;
  final String? errorText;

  const CustomIconColorInput({
    super.key,
    this.label,
    this.hiddenLabel = false,
    this.isRequired = false,
    this.icon,
    this.color,
    required this.onIconColorChanged,
    this.isLoading = false,
    this.errorText,
  }) : assert(
         !(isRequired && label == null),
         'CustomIconColorInput: "label" must not be null when "isRequired" is true.',
       );

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Sizes.s10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null && !hiddenLabel)
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: label, style: context.textTheme.bodyLarge),
                if (isRequired)
                  TextSpan(
                    text: ' *',
                    style: context.textTheme.bodyLarge?.copyWith(color: context.color.primary),
                  ),
              ],
            ),
          ),
        FormField<IconData>(
          validator: (value) {
            if (isRequired && (icon == null && color == null)) {
              return Constants.validatorRequired(Constants.ICON_COLOR_TITLE);
            }

            return null;
          },
          builder: (formFieldState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeletonizer(
                  enabled: isLoading,
                  child: ElevatedButton(
                    onPressed: () async {
                      final newIconColor = await IconColorBottomSheet.show(
                        context: context,
                        icon: icon,
                        color: color,
                      );

                      if (newIconColor != null) {
                        if (!context.mounted) return;
                        onIconColorChanged(newIconColor.color, newIconColor.icon);
                        formFieldState.didChange(newIconColor.icon);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: formFieldState.hasError ? context.color.error : Colors.transparent),
                      backgroundColor: color ?? Colors.grey.shade600,
                    ),
                    child: icon != null
                        ? Icon(icon, color: context.color.onPrimary, size: Sizes.s32)
                        : Text(Constants.ICON_COLOR_PICK_HINT, style: context.textTheme.bodyLarge),
                  ),
                ),
                if (formFieldState.hasError || errorText != null)
                  Padding(
                    padding: EdgeInsets.only(top: Sizes.s8),
                    child: Text(
                      errorText ?? formFieldState.errorText!,
                      style: context.textTheme.bodyLarge?.copyWith(color: context.color.error),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
