import 'package:flutter/material.dart';
import 'package:waltrack/applications/constant/constants.dart';

class TransactionDetailPage extends StatelessWidget {
  static const String path = '/transaction/detail';
  final int transactionId;

  const TransactionDetailPage({super.key, required this.transactionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.TRANSACTION_DETAIL_TITLE),
      ),
    );
  }
}
