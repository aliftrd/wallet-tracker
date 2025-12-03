import 'package:flutter/material.dart';
import 'dart:io';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/theme/custom_color.dart';
import 'package:waltrack/applications/theme/custom_text_style.dart';

extension BuildContextExtensions on BuildContext {
  bool get isAndroid => Platform.isAndroid;
  bool get isIOS => Platform.isIOS;

  ThemeData get theme => Theme.of(this);

  // Padding
  double get defaultPadding => Sizes.s16;

  // Colors
  ColorScheme get color => theme.colorScheme;
  Color get divider => CustomColor().divider;
  Color get blackOrWhite => CustomColor().blackWhite;

  // Text Style
  TextTheme get textTheme => theme.textTheme;
  CustomTextStyle get customTextStyle => CustomTextStyle();
}
