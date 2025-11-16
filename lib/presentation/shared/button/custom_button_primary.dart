import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';

class CustomButtonPrimary extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onPress;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;

  const CustomButtonPrimary({
    super.key,
    required this.text,
    this.color,
    this.onPress,
    this.margin = EdgeInsets.zero,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: isLoading
            ? null
            : () {
                if (onPress != null) onPress!();
              },
        child: isLoading
            ? SpinKitWave(color: context.color.onPrimary, size: 25)
            : SizedBox(
                width: double.infinity,
                child: Text(
                  text,
                  style: context.customTextStyle.button,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
