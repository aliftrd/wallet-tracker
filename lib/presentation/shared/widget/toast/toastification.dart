import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
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

  static void showSuccess(
    BuildContext context, {
    required String message,
  }) {
    toastification.show(
      context: context,
      primaryColor: _colors.success,
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      autoCloseDuration: duration,
      title: Text(Constants.TOAST_SUCCESS_TITLE, style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
      description: Text(message, style: context.textTheme.bodyMedium),
      alignment: Alignment.topCenter,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
    );
  }

  static void showError(
    BuildContext context, {
    required String message,
  }) {
    toastification.show(
      context: context,
      primaryColor: _colors.danger,
      type: ToastificationType.error,
      style: ToastificationStyle.fillColored,
      autoCloseDuration: duration,
      title: Text(Constants.TOAST_ERROR_TITLE, style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
      description: Text(message, style: context.textTheme.bodyMedium),
      alignment: Alignment.topCenter,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
    );
  }
}
