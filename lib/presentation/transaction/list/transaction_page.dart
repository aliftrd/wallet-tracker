import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/build_context_extension.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/presentation/shared/widget/error/custom_error_widget.dart';
import 'package:waltrack/presentation/shared/widget/transaction_item.dart';
import 'package:waltrack/presentation/transaction/form/transaction_form_page.dart';
import 'package:waltrack/presentation/transaction/list/bloc/transaction_bloc.dart';

class TransactionPage extends StatefulWidget {
  static const String path = '/transaction';
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(const TransactionEvent.fetch());
  }

  ListView _buildSkeletonList() => ListView.separated(
    padding: EdgeInsets.symmetric(vertical: Sizes.s16),
    itemCount: 6,
    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
    itemBuilder: (context, index) => const TransactionItemSkeleton(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.TRANSACTION_LIST_TITLE)),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: context.isAndroid ? Sizes.s80 : Sizes.s65),
        child: FloatingActionButton(
          onPressed: () => context.pushNamed(TransactionFormPage.path),
          child: const Icon(Icons.add),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async => context.read<TransactionBloc>().add(const TransactionEvent.fetch()),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Sizes.s16),
          child: BlocConsumer<TransactionBloc, TransactionState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.isLoading) return _buildSkeletonList();
              if (state.isFailure || state.transactions.isEmpty) return CustomErrorWidget.scrollable(context, state.transactions.isEmpty);

              return ListView.separated(
                padding: EdgeInsets.only(top: Sizes.s16, bottom: context.isAndroid ? Sizes.s100 : Sizes.s65),
                itemCount: state.transactions.length,
                separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
                itemBuilder: (context, index) {
                  final transaction = state.transactions[index];

                  return TransactionItem(transaction: transaction);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
