import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

extension StringExtension on String {
  Widget toSvg({
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return SvgPicture.asset(
      this,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }

  Widget toLottie({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Lottie.asset(this, width: width, height: height, fit: fit);
  }

  Widget toImage({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(this, width: width, height: height, fit: fit);
  }

  Color toColor() {
    String hexColor = replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    return Color(int.parse(hexColor, radix: 16));
  }

  IconData toIconData() {
    int codePoint = int.parse(this, radix: 16);

    return IconData(codePoint, fontFamily: 'MaterialIcons');
  }

  int toNumericString() => int.parse(replaceAll(RegExp(r'[^0-9]'), ''));

  String formatDate() {
    final date = DateTime.parse(this);
    final formatter = DateFormat('dd MMM yyyy, HH:mm');

    return formatter.format(date);
  }
}
