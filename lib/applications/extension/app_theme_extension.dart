import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  // Padding
  double get defaultPadding => Sizes.s16;

  // Colors
  ColorScheme get color => theme.colorScheme;

  // Text Style
  TextTheme get textTheme => theme.textTheme;
}
