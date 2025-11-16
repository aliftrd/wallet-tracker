import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/theme/custom_color.dart';

enum ToastPosition {
  top,
  bottom,
}

class Toast {
  static final CustomColor _colors = CustomColor();
  static Duration duration = const Duration(
    seconds: Constants.NOTIFICATION_DURATION,
  );

  static void showSuccess({
    required BuildContext context,
    required String message,
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      primaryColor: _colors.success,
      backgroundColor: context.color.surface,
      borderSide: BorderSide(color: _colors.success),
      autoCloseDuration: duration,
      title: Text(Constants.TOAST_SUCCESS_TITLE, style: context.textTheme.bodyLarge?.copyWith(color: context.blackOrWhite)),
      description: Text(message, style: context.textTheme.bodyMedium?.copyWith(color: context.blackOrWhite)),
      alignment: Alignment.topCenter,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
    );
  }

  static void showError({
    required BuildContext context,
    required String message,
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
      primaryColor: _colors.danger,
      backgroundColor: context.color.surface,
      borderSide: BorderSide(color: _colors.danger),
      autoCloseDuration: duration,
      title: Text(Constants.TOAST_ERROR_TITLE, style: context.textTheme.bodyLarge?.copyWith(color: context.blackOrWhite)),
      description: Text(message, style: context.textTheme.bodyMedium?.copyWith(color: context.blackOrWhite)),
      alignment: Alignment.topCenter,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
    );
  }
}
