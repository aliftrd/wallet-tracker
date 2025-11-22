import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/applications/extension/integer_extension.dart';
import 'package:waltrack/presentation/shared/widget/button/custom_button_primary.dart';
import 'package:waltrack/presentation/shared/widget/input/custom_icon_color_input.dart';
import 'package:waltrack/presentation/shared/widget/input/custom_labeled_text_input.dart';
import 'package:waltrack/presentation/shared/widget/toast/toastification.dart';
import 'package:waltrack/presentation/wallet/form/bloc/wallet_form_bloc.dart';
import 'package:waltrack/presentation/wallet/list/bloc/wallet_bloc.dart';

class WalletFormPage extends StatelessWidget {
  static const String path = '/wallet/form';
  final int? walletId;

  const WalletFormPage({super.key, this.walletId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalletFormBloc()..add(WalletFormEvent.initialize(walletId)),
      child: WalletFormView(walletId: walletId),
    );
  }
}

class WalletFormView extends StatefulWidget {
  final int? walletId;
  const WalletFormView({super.key, this.walletId});

  @override
  State<WalletFormView> createState() => _WalletFormViewState();
}

class _WalletFormViewState extends State<WalletFormView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerListener();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _balanceController.dispose();
    super.dispose();
  }

  void _controllerListener() {
    _nameController.addListener(() => context.read<WalletFormBloc>().add(WalletFormEvent.nameChanged(_nameController.text)));
    _balanceController.addListener(() => context.read<WalletFormBloc>().add(WalletFormEvent.balanceChanged(_balanceController.text)));
  }

  void _stateListener(WalletFormState state) async {
    if (state.formStatus.isSuccess) {
      Toast.showSuccess(context, message: state.message!);
      context.read<WalletBloc>().add(const WalletEvent.fetch());
      context.pop();
    } else if (state.walletStatus.isFailure) {
      Toast.showError(context, message: state.message!);
      context.pop();
    } else if (state.formStatus.isFailure) {
      Toast.showError(context, message: state.message!);
    } else if (state.walletStatus.isSuccess) {
      _nameController.text = state.form.name!;
      _balanceController.text = state.form.balance.formatCurrencyString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.walletId != null ? Constants.WALLET_FORM_EDIT_TITLE : Constants.WALLET_FORM_ADD_TITLE),
      ),
      body: Container(
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
        child: Form(
          key: _formKey,
          child: BlocConsumer<WalletFormBloc, WalletFormState>(
            listener: (context, state) => _stateListener(state),
            builder: (context, state) {
              return Column(
                spacing: Sizes.s24,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    spacing: Sizes.s10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomLabeledTextInput(
                        label: Constants.WALLET_FORM_NAME_LABEL,
                        hintText: Constants.WALLET_FORM_NAME_HINT,
                        isRequired: true,
                        isLoading: state.formStatus.isLoading || state.walletStatus.isLoading,
                        controller: _nameController,
                        errorText: state.getErrorText(Constants.WALLET_FORM_NAME_KEY),
                      ),
                      CustomLabeledTextInput(
                        label: Constants.WALLET_FORM_BALANCE_LABEL,
                        hintText: Constants.WALLET_FORM_BALANCE_HINT,
                        isRequired: true,
                        isLoading: state.formStatus.isLoading || state.walletStatus.isLoading,
                        controller: _balanceController,
                        keyboardType: const TextInputType.numberWithOptions(signed: true),
                        inputFormatters: [
                          CurrencyInputFormatter(
                            thousandSeparator: ThousandSeparator.Comma,
                            mantissaLength: 0,
                          ),
                        ],
                        errorText: state.getErrorText(Constants.WALLET_FORM_BALANCE_KEY),
                      ),
                      CustomIconColorInput(
                        label: Constants.ICON_COLOR_TITLE,
                        isRequired: true,
                        isLoading: state.formStatus.isLoading || state.walletStatus.isLoading,
                        icon: state.form.icon,
                        color: state.form.color,
                        onIconColorChanged: (color, icon) => context.read<WalletFormBloc>().add(WalletFormEvent.colorAndIconChanged(color, icon)),
                      ),
                    ],
                  ),
                  CustomButtonPrimary(
                    text: Constants.CLICK_TO_ACTION_SAVE,
                    isLoading: state.formStatus.isLoading || state.walletStatus.isLoading,
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        context.read<WalletFormBloc>().add(const WalletFormEvent.submit());
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
