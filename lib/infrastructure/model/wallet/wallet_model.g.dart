// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => _WalletModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  balance: BalanceModel.fromJson(json['balance'] as Map<String, dynamic>),
  color: json['color'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$WalletModelToJson(_WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'color': instance.color,
      'icon': instance.icon,
    };

_BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) =>
    _BalanceModel(
      original: (json['original'] as num).toInt(),
      formatted: json['formatted'] as String,
    );

Map<String, dynamic> _$BalanceModelToJson(_BalanceModel instance) =>
    <String, dynamic>{
      'original': instance.original,
      'formatted': instance.formatted,
    };
