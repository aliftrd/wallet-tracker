import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';

class WalletPage extends StatelessWidget {
  static const String path = '/wallet';
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Text(
          "Wallet",
          style: context.textTheme.headlineLarge?.copyWith(
            color: context.color.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s10),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(Sizes.s16),
              decoration: ShapeDecoration(
                color: context.color.primaryContainer,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 16,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              child: Row(
                spacing: Sizes.s10,
                children: [
                  Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(Sizes.s16),
                    child: Padding(
                      padding: EdgeInsets.all(Sizes.s10),
                      child: const Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: Sizes.s4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet consectetur adipiscing',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.bodyMedium,
                        ),
                        Text(
                          'IDR 1,000,000',
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
