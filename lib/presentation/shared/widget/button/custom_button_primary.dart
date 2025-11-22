import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';

class CustomButtonPrimary extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? width;
  final Color? color;
  final Function()? onPress;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;

  const CustomButtonPrimary({
    super.key,
    required this.text,
    this.icon,
    this.width,
    this.color,
    this.onPress,
    this.margin = EdgeInsets.zero,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: isLoading
              ? null
              : () {
                  if (onPress != null) onPress!();
                },
          child: isLoading
              ? SpinKitWave(
                  color: context.color.onPrimary,
                  size: Sizes.s25,
                )
              : Row(
                  spacing: Sizes.s10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) Icon(icon, size: Sizes.s20),
                    Text(
                      text,
                      style: context.customTextStyle.button,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
