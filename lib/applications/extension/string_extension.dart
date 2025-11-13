import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  Widget toImage({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(this, width: width, height: height, fit: fit);
  }
}
