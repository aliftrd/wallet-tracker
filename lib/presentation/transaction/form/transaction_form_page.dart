import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/presentation/transaction/form/bloc/transaction_form_bloc.dart';

class TransactionFormPage extends StatelessWidget {
  static const String path = '/transaction/form';
  final int? transactionId;

  const TransactionFormPage({super.key, this.transactionId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransactionFormBloc()..add(TransactionFormEvent.initialize(transactionId)),
      child: TransactionFormView(transactionId: transactionId),
    );
  }
}

class TransactionFormView extends StatefulWidget {
  final int? transactionId;
  const TransactionFormView({super.key, this.transactionId});

  @override
  State<TransactionFormView> createState() => _TransactionFormViewState();
}

class _TransactionFormViewState extends State<TransactionFormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.transactionId != null ? Constants.TRANSACTION_FORM_EDIT_TITLE : Constants.TRANSACTION_FORM_ADD_TITLE),
      ),
    );
  }
}
