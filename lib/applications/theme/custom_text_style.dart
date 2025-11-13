import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';

class CustomTextStyle {
  static final CustomTextStyle _instance = CustomTextStyle._internal();
  factory CustomTextStyle() => _instance;

  CustomTextStyle._internal();

  TextStyle displayXL = TextStyle(
    fontSize: FontSize.s40,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle displayL = TextStyle(
    fontSize: FontSize.s36,
    fontWeight: FontWeight.w700,
    height: 1.16,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle displayM = TextStyle(
    fontSize: FontSize.s20,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle displayS = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle headingXL = TextStyle(
    fontSize: FontSize.s25,
    fontWeight: FontWeight.w600,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle headingL = TextStyle(
    fontSize: FontSize.s24,
    height: 1.3,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle headingM = TextStyle(
    fontSize: FontSize.s18,
    height: 1.3,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle headingS = TextStyle(
    fontSize: FontSize.s15,
    fontWeight: FontWeight.w700,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle heading = TextStyle(
    fontSize: FontSize.s24,
    fontWeight: FontWeight.w400,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle subHeading = TextStyle(
    fontSize: FontSize.s18,
    height: 1.3,
    fontWeight: FontWeight.w500,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle bodyL = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeight.w400,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle body = TextStyle(
    fontSize: FontSize.s15,
    fontWeight: FontWeight.w400,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle bodySmall = TextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeight.w400,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle subtitle = TextStyle(
    fontSize: FontSize.s15,
    fontWeight: FontWeight.w500,
    height: 1.3,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle button = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeight.w700,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle labelL = TextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeight.w600,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle labelM = TextStyle(
    fontSize: FontSize.s13,
    fontWeight: FontWeight.w500,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
  TextStyle labelS = TextStyle(
    fontSize: FontSize.s12,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -1,
  );
}
