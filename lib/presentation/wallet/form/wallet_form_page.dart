import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/applications/extension/integer_extension.dart';
import 'package:waltrack/presentation/shared/widget/bottom_sheet/icon_color_bottom_sheet.dart';
import 'package:waltrack/presentation/shared/widget/button/custom_button_primary.dart';
import 'package:waltrack/presentation/shared/widget/input/custom_labeled_textinput.dart';
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

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formBloc = WalletFormBloc();
    _formBloc.add(WalletFormEvent.initialize(widget.walletId));
  }

  @override
  void didChangeDependencies() {
    _controllerListener();
    super.didChangeDependencies();
  }

  void _controllerListener() {
    _nameController.addListener(() => _formBloc.add(WalletFormEvent.nameChanged(_nameController.text)));
    _balanceController.addListener(() => _formBloc.add(WalletFormEvent.balanceChanged(_balanceController.text)));
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
        title: Text(widget.walletId != null ? 'Edit Wallet' : 'Tambah Wallet'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s16),
        child: Form(
          key: _formKey,
          child: BlocConsumer<WalletFormBloc, WalletFormState>(
            bloc: _formBloc,
            listener: (context, state) {
              if (state.status.isSuccess && state.form.id != null) {
                _nameController.text = state.form.name!;
                _balanceController.text = state.form.balance.formatCurrencyString();
              }
            },
            builder: (context, state) {
              return Column(
                spacing: Sizes.s10,
                children: [
                  CustomLabeledTextInput(
                    label: 'Nama',
                    hintText: 'Masukkan nama',
                    isRequired: true,
                    isLoading: state.status.isLoading,
                    controller: _nameController,
                  ),
                  CustomLabeledTextInput(
                    label: 'Saldo awal',
                    hintText: 'Masukkan saldo awal',
                    isRequired: true,
                    isLoading: state.status.isLoading,
                    controller: _balanceController,
                    keyboardType: const TextInputType.numberWithOptions(signed: true),
                    inputFormatters: [
                      CurrencyInputFormatter(
                        thousandSeparator: ThousandSeparator.Comma,
                        mantissaLength: 0,
                      ),
                    ],
                  ),
                  CustomButtonPrimary(
                    text: widget.walletId != null ? 'Update' : 'Tambah',
                    isLoading: state.status.isLoading,
                    color: state.form.colorOrRandom,
                    onPress: () => IconColorBottomSheet.show(context: context, icon: state.form.iconOrRandom, color: state.form.colorOrRandom),
                  ),
                  CustomButtonPrimary(
                    text: widget.walletId != null ? 'Update' : 'Tambah',
                    isLoading: state.status.isLoading,
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        _formBloc.add(const WalletFormEvent.submit());
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
