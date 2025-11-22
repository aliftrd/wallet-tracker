import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_form_model.freezed.dart';
part 'wallet_form_model.g.dart';

@freezed
abstract class WalletFormModel with _$WalletFormModel {
  const WalletFormModel._();

  const factory WalletFormModel({
    required String name,
    @JsonKey(name: 'initial_balance') required String initialBalance,
    required String color,
    required String icon,
  }) = _WalletFormModel;

  factory WalletFormModel.fromJson(Map<String, dynamic> json) => _$WalletFormModelFromJson(json);
}
