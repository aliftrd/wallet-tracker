import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_detail_entity.dart';

part 'wallet_detail_model.freezed.dart';
part 'wallet_detail_model.g.dart';

@freezed
abstract class WalletDetailModel with _$WalletDetailModel {
  const WalletDetailModel._();

  const factory WalletDetailModel({
    required int id,
    required String name,
    required int balance,
    required String color,
    required String icon,
  }) = _WalletDetailModel;

  factory WalletDetailModel.fromJson(Map<String, dynamic> json) => _$WalletDetailModelFromJson(json);

  WalletDetailEntity toEntity() => WalletDetailEntity(
    id: id,
    name: name,
    balance: balance,
    color: color.toColor(),
    icon: icon.toIconData(),
  );
}
