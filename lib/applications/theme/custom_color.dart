import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomColor {
  static final CustomColor _instance = CustomColor._internal();
  factory CustomColor() => _instance;

  CustomColor._internal();

  Color primary = const Color(0xFFFF683D);
  Color disabled = const Color(0xFF6A6A6A);
  Color divider = Colors.grey.shade700;

  // Light Palette
  Color background = const Color(0xFFE5E5E5);
  Color container = const Color(0xFFFBFBFB);
  Color lightContainer = const Color(0xFFEBEBEB);

  // Dark Palette
  Color backgroundDark = const Color(0xFF141111);
  Color containerDark = const Color(0xFF2F2F2F);
  Color lightContainerDark = const Color.fromARGB(255, 23, 23, 23);

  // General Palette
  Color white = const Color(0xFFFBFBFB);
  Color danger = const Color(0xFFED001D);
  Color success = const Color(0xFF00D389);
  Color warning = const Color(0xFFEFFD72);

  Color get blackWhite {
    return PlatformDispatcher.instance.platformBrightness == Brightness.dark ? white : background;
  }
}
