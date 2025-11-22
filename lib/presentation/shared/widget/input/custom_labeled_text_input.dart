import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';

class CustomLabeledTextInput extends StatelessWidget {
  final String? label;
  final bool hiddenLabel;
  final bool isRequired;
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final bool obscureText;
  final String? errorText;
  final bool isLoading;

  const CustomLabeledTextInput({
    super.key,
    this.label,
    this.hiddenLabel = false,
    this.isRequired = false,
    required this.controller,
    required this.hintText,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.enabled = true,
    this.obscureText = false,
    this.errorText,
    this.isLoading = false,
  }) : assert(
         !(isRequired && label == null),
         'CustomLabeledTextInput: "label" must not be null when "isRequired" is true.',
       );

  bool get hasPrefix => prefixIcon != null;
  bool get hasSuffix => suffixIcon != null;

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
        Skeletonizer(
          enabled: isLoading,
          child: Skeleton.unite(
            child: TextFormField(
              enabled: enabled,
              controller: controller,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 2,
                  minHeight: 2,
                ),
                errorText: errorText,
                contentPadding: EdgeInsets.only(bottom: Sizes.s10, top: Sizes.s20),
                prefix: !hasPrefix ? Padding(padding: EdgeInsets.only(left: Sizes.s16)) : null,
                prefixIcon: prefixIcon,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: Sizes.s16),
                  child: suffixIcon,
                ),
              ),
              validator: (value) {
                if (isRequired && (value == null || value.isEmpty)) {
                  return Constants.validatorRequired(label ?? hintText);
                }
                return validator?.call(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
