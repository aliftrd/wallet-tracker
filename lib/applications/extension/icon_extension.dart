import 'package:flutter/material.dart';

extension IconExtension on IconData {
  String toHex() {
    return codePoint.toRadixString(16);
  }
}
