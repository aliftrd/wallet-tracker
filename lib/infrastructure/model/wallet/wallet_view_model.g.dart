// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletViewModel _$WalletViewModelFromJson(Map<String, dynamic> json) =>
    _WalletViewModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      balance: json['balance'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WalletViewModelToJson(_WalletViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'color': instance.color,
      'icon': instance.icon,
    };
