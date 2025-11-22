import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/applications/theme/custom_color.dart';
import 'package:waltrack/presentation/shared/widget/button/custom_button_primary.dart';

class ConfirmBottomSheet extends StatelessWidget {
  final String? title;
  final String? message;

  const ConfirmBottomSheet({
    super.key,
    this.title,
    this.message,
  });

  static Future<bool?> show(
    BuildContext context, {
    String? title,
    String? message,
  }) async {
    return showModalBottomSheet<bool>(
      enableDrag: false,
      isDismissible: false,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: true,
      context: context,
      builder: (context) => ConfirmBottomSheet(
        title: title,
        message: message,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: Sizes.s20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            spacing: Sizes.s10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.illustrationWarning.toSvg(
                width: Sizes.s150,
                height: Sizes.s150,
              ),
              Text(
                title ?? Constants.CONFIRM_BOTTOM_SHEET_TITLE,
                style: context.textTheme.headlineMedium,
              ),
              Text(
                message ?? Constants.CONFIRM_BOTTOM_SHEET_MESSAGE,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Sizes.s16,
              right: Sizes.s16,
              bottom: Sizes.s16,
            ),
            child: Row(
              spacing: Sizes.s16,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomButtonPrimary(
                    onPress: () => context.pop(false),
                    text: Constants.CLICK_TO_ACTION_CANCEL,
                    color: CustomColor().disabled,
                  ),
                ),
                Expanded(
                  child: CustomButtonPrimary(
                    onPress: () => context.pop(true),
                    text: Constants.CLICK_TO_ACTION_DELETE,
                    color: CustomColor().danger,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
