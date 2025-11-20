import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

extension IntegerExtension on int {
  String formatCurrencyString() => this.toCurrencyString(
    thousandSeparator: ThousandSeparator.Comma,
    mantissaLength: 0,
  );
}
