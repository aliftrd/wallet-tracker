import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_entity.dart';
import 'package:waltrack/presentation/shared/widget/error/custom_error_widget.dart';
import 'package:waltrack/presentation/wallet/list/bloc/wallet_bloc.dart';
import 'package:waltrack/presentation/wallet/widget/wallet_item.dart';

class WalletPage extends StatefulWidget {
  static const String path = '/wallet';
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late final WalletBloc _walletBloc;

  @override
  void initState() {
    super.initState();
    _walletBloc = WalletBloc();
    _walletBloc.add(const WalletEvent.fetch());
  }

  ListView _buildSkeletonList() => ListView.separated(
    itemCount: 6,
    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
    itemBuilder: (context, index) => const WalletItemSkeleton(),
  );

  ListView _buildWalletList(List<WalletEntity> wallets) => ListView.separated(
    itemCount: wallets.length,
    separatorBuilder: (context, index) => SizedBox(height: Sizes.s8),
    itemBuilder: (context, index) => WalletItem(wallet: wallets[index]),
  );

  Widget _buildErrorWidget(bool? isEmpty) => CustomErrorWidget.scrollable(context, isEmpty ?? false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet", style: context.textTheme.headlineMedium),
        centerTitle: true,
        backgroundColor: context.color.primaryContainer,
        scrolledUnderElevation: 0,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: Sizes.s62),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async => _walletBloc.add(const WalletEvent.fetch()),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s16),
          child: BlocBuilder<WalletBloc, WalletState>(
            bloc: _walletBloc,
            builder: (context, state) {
              final SubmissionStatus status = state.status;

              if (status.isLoading) return _buildSkeletonList();
              if (status.isFailure || state.wallets.isEmpty) return _buildErrorWidget(state.wallets.isEmpty);

              return _buildWalletList(state.wallets);
            },
          ),
        ),
      ),
    );
  }
}
