// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletFormModel _$WalletFormModelFromJson(Map<String, dynamic> json) =>
    _WalletFormModel(
      name: json['name'] as String,
      initialBalance: json['initial_balance'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WalletFormModelToJson(_WalletFormModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'initial_balance': instance.initialBalance,
      'color': instance.color,
      'icon': instance.icon,
    };
