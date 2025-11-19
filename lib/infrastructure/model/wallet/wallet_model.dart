import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_entity.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
abstract class WalletModel with _$WalletModel {
  const WalletModel._();

  const factory WalletModel({
    required int id,
    required String name,
    required BalanceModel balance,
    required String color,
    required String icon,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);

  WalletEntity toEntity() => WalletEntity(
    id: id,
    name: name,
    balance: balance.toEntity(),
    color: color.toColor(),
    icon: icon.toIconData(),
  );
}

@freezed
abstract class BalanceModel with _$BalanceModel {
  const BalanceModel._();

  const factory BalanceModel({
    required int original,
    required String formatted,
  }) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, dynamic> json) => _$BalanceModelFromJson(json);

  BalanceEntity toEntity() => BalanceEntity(
    original: original,
    formatted: formatted,
  );
}
