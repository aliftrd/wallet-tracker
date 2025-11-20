import 'package:flutter/material.dart';
import 'package:waltrack/presentation/wallet/form/bloc/wallet_form_bloc.dart';

class WalletFormPage extends StatefulWidget {
  static const String path = '/wallet/form';
  final int? walletId;

  const WalletFormPage({
    super.key,
    this.walletId,
  });

  @override
  State<WalletFormPage> createState() => _WalletFormPageState();
}

class _WalletFormPageState extends State<WalletFormPage> {
  late final WalletFormBloc _formBloc;

  @override
  void initState() {
    super.initState();
    _formBloc = WalletFormBloc();
    _formBloc.add(WalletFormEvent.initialize(widget.walletId));
  }

  @override
  void dispose() {
    _formBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet Form'),
      ),
      body: Container(
        child: Text('Wallet Form'),
      ),
    );
  }
}
