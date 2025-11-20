// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletDetailModel _$WalletDetailModelFromJson(Map<String, dynamic> json) =>
    _WalletDetailModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      initialBalance: (json['initial_balance'] as num).toInt(),
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WalletDetailModelToJson(_WalletDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'initial_balance': instance.initialBalance,
      'color': instance.color,
      'icon': instance.icon,
    };
