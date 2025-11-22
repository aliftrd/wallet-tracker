import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';
import 'package:waltrack/presentation/shared/widget/error/custom_error_widget.dart';
import 'package:waltrack/presentation/wallet/form/wallet_form_page.dart';
import 'package:waltrack/presentation/wallet/list/bloc/wallet_bloc.dart';
import 'package:waltrack/presentation/wallet/widget/wallet_item.dart';

class WalletPage extends StatefulWidget {
  static const String path = '/wallet';
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  void initState() {
    super.initState();
    context.read<WalletBloc>().add(const WalletEvent.fetch());
  }

  ListView _buildSkeletonList() => ListView.separated(
    padding: EdgeInsets.symmetric(vertical: Sizes.s16),
    itemCount: 6,
    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
    itemBuilder: (context, index) => const WalletItemSkeleton(),
  );

  ListView _buildWalletList(List<WalletViewEntity> wallets) => ListView.separated(
    padding: EdgeInsets.symmetric(vertical: Sizes.s16),
    itemCount: wallets.length,
    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
    itemBuilder: (context, index) => WalletItem(wallet: wallets[index]),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalletBloc()..add(const WalletEvent.fetch()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Constants.WALLET_TITLE),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: Sizes.s62),
          child: FloatingActionButton(
            onPressed: () => context.pushNamed(WalletFormPage.path),
            child: const Icon(Icons.add),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async => context.read<WalletBloc>().add(const WalletEvent.fetch()),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: Sizes.s16),
            child: BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                final SubmissionStatus status = state.status;

                if (status.isLoading) return _buildSkeletonList();
                if (status.isFailure || state.wallets.isEmpty) return CustomErrorWidget.scrollable(context, state.wallets.isEmpty);

                return _buildWalletList(state.wallets);
              },
            ),
          ),
        ),
      ),
    );
  }
}
