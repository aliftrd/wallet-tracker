import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/theme/custom_color.dart';
import 'package:waltrack/applications/theme/custom_text_style.dart';

class AppTheme {
  static final CustomColor _colors = CustomColor();
  static final CustomTextStyle _textStyle = CustomTextStyle();

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: _colors.primary,
      hintColor: _colors.primary,
      scaffoldBackgroundColor: _colors.backgroundDark,
      primaryColorDark: _colors.primary,
      primaryColorLight: _colors.primary,
      colorScheme: ColorScheme.dark(
        primary: _colors.primary,
        primaryContainer: _colors.containerDark,
        secondaryContainer: _colors.lightContainerDark,
        onPrimary: _colors.white,
        onError: _colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _colors.lightContainerDark,
        elevation: 0,
        toolbarHeight: 56,
        titleTextStyle: _textStyle.bodyL,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        backgroundColor: _colors.containerDark,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      popupMenuTheme: PopupMenuThemeData(
        iconColor: _colors.primary,
        menuPadding: EdgeInsets.zero,
        position: PopupMenuPosition.under,
      ),
      snackBarTheme: SnackBarThemeData(
        elevation: 0,
        contentTextStyle: _textStyle.body,
        behavior: SnackBarBehavior.floating,
        backgroundColor: _colors.containerDark,
        dismissDirection: DismissDirection.horizontal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: _textStyle.body.copyWith(color: _colors.disabled),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
          borderSide: BorderSide(
            color: _colors.disabled,
            width: .5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
          borderSide: BorderSide(
            color: _colors.disabled,
            width: .5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
          borderSide: BorderSide(
            color: _colors.primary,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
          borderSide: BorderSide(color: _colors.danger),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.s16),
          borderSide: BorderSide(color: _colors.danger),
        ),
        errorStyle: _textStyle.bodySmall.copyWith(color: _colors.danger),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _colors.white,
          backgroundColor: _colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          disabledBackgroundColor: _colors.disabled,
          disabledForegroundColor: _colors.containerDark,
          minimumSize: Size(double.infinity, Sizes.s50),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: _colors.containerDark,
          foregroundColor: _colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: _textStyle.displayL,
        displayMedium: _textStyle.displayM,
        displaySmall: _textStyle.displayS,
        headlineLarge: _textStyle.headingXL,
        headlineMedium: _textStyle.headingL,
        headlineSmall: _textStyle.headingS,
        titleLarge: _textStyle.subHeading,
        titleMedium: _textStyle.headingM,
        titleSmall: _textStyle.labelL,
        bodyLarge: _textStyle.bodyL,
        bodyMedium: _textStyle.body,
        bodySmall: _textStyle.bodySmall,
        labelLarge: _textStyle.labelL,
        labelMedium: _textStyle.labelM,
        labelSmall: _textStyle.labelS,
      ),
    );
  }
}
