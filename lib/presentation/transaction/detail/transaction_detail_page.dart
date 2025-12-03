import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/presentation/shared/widget/bottom_sheet/confirm_bottom_sheet.dart';
import 'package:waltrack/presentation/transaction/detail/bloc/transaction_detail_bloc.dart';
import 'package:waltrack/presentation/transaction/list/bloc/transaction_bloc.dart';

class TransactionDetailPage extends StatelessWidget {
  static const String path = '/transaction/detail';
  final int transactionId;

  const TransactionDetailPage({
    super.key,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    Widget rowHeader(String label, IconData icon) => Row(
      spacing: Sizes.s6,
      children: [
        Icon(icon, color: context.color.primary, size: FontSize.s20),
        Text(
          label,
          style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );

    Widget rowItem(String label, String value) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, textAlign: TextAlign.start, style: context.textTheme.bodySmall),
        Expanded(
          child: Text(
            value,
            maxLines: 1,
            textAlign: TextAlign.end,
            style: context.textTheme.bodySmall,
          ),
        ),
      ],
    );

    Widget body(BuildContext context, TransactionDetailState state) => Skeletonizer(
      enabled: state.isLoading,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s16),
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
        child: Column(
          spacing: Sizes.s10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            rowHeader(Constants.TRANSACTION_DETAIL_INFORMATION_TITLE, Icons.info),
            rowItem(Constants.TRANSACTION_DETAIL_STORE_NAME, state.data?.storeName ?? ''),
            rowItem(Constants.TRANSACTION_DETAIL_DATE, state.data?.date.formatDate() ?? ''),
            rowItem(Constants.TRANSACTION_DETAIL_NOTE, state.data?.note ?? ''),
            Divider(height: .2, color: context.divider),
            rowHeader(Constants.TRANSACTION_DETAIL_ITEMS, Icons.receipt),
            if (state.data?.items.isNotEmpty ?? false) ...[
              ...(state.data?.items.asMap().entries.map(
                    (entry) => Column(
                      spacing: Sizes.s8,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${entry.key + 1}. ${entry.value.name}', style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700)),
                        Text(
                          '    ${entry.value.quantity} x ${entry.value.price.formatted} = ${entry.value.totalAmount.formatted}',
                          style: context.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ) ??
                  []),
            ] else ...[
              Text(Constants.TRANSACTION_DETAIL_EMPTY_ITEMS, style: context.textTheme.bodySmall),
            ],
            Divider(height: .2, color: context.divider),
            rowHeader(Constants.TRANSACTION_DETAIL_PAYMENT_TITLE, Icons.wallet),
            rowItem(Constants.TRANSACTION_DETAIL_TAX_AMOUNT, state.data?.taxAmount.formatted ?? ''),
            rowItem(Constants.TRANSACTION_DETAIL_TOTAL_AMOUNT, state.data?.totalAmount.formatted ?? ''),
            SizedBox(height: Sizes.s2),
            Row(
              spacing: Sizes.s10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: Text(Constants.CLICK_TO_ACTION_EDIT, style: context.textTheme.bodySmall),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: context.color.error),
                    onPressed: () async {
                      final confirmed = await ConfirmBottomSheet.show(
                        context,
                        title: Constants.TRANSACTION_DELETED_CONFIRM_TITLE,
                        message: Constants.TRANSACTION_DELETED_CONFIRM_MESSAGE,
                      );

                      if (confirmed == true && context.mounted) {
                        context.read<TransactionDetailBloc>().add(const TransactionDetailEvent.delete());
                      }
                    },
                    icon: const Icon(Icons.delete),
                    label: Text(Constants.CLICK_TO_ACTION_DELETE, style: context.textTheme.bodySmall),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return BlocProvider(
      create: (context) => TransactionDetailBloc()..add(TransactionDetailEvent.initialize(transactionId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Constants.TRANSACTION_DETAIL_TITLE),
        ),
        body: BlocConsumer<TransactionDetailBloc, TransactionDetailState>(
          listener: (context, state) {
            if (state.isFailure) return context.pop();
            if (state.isSuccess && state.operation == TransactionOperation.delete) {
              context.read<TransactionBloc>().add(const TransactionEvent.fetch());
              return context.pop();
            }
          },
          builder: (context, state) => body(context, state),
        ),
      ),
    );
  }
}
