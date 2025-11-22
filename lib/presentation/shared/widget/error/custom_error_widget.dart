import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';

class CustomErrorWidget extends StatelessWidget {
  final bool isEmpty;

  const CustomErrorWidget({
    super.key,
    this.isEmpty = false,
  });

  static Widget scrollable(BuildContext context, bool isEmpty) => SingleChildScrollView(
    physics: const AlwaysScrollableScrollPhysics(),
    child: ConstrainedBox(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height - Sizes.s120),
      child: CustomErrorWidget(isEmpty: isEmpty),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s10),
      child: Column(
        spacing: Sizes.s4,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.illustrationNotFound.toSvg(width: double.infinity, height: 200),
          Text(Constants.ERROR_TITLE, textAlign: TextAlign.center, style: context.textTheme.displayMedium),
          Text(
            isEmpty ? Constants.ERROR_EMPTY_DESCRIPTION : Constants.ERROR_NETWORK_DESCRIPTION,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium,
          ),
          SizedBox(height: Sizes.s80),
        ],
      ),
    );
  }
}
