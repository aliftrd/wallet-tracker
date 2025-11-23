// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionViewModel _$TransactionViewModelFromJson(
  Map<String, dynamic> json,
) => _TransactionViewModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  category: CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  wallet: json['wallet'] as String,
  storeName: json['store_name'] as String,
  date: json['date'] as String,
  note: json['note'] as String,
  taxAmount: json['tax_amount'] as String,
  totalAmount: json['total_amount'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$TransactionViewModelToJson(
  _TransactionViewModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'category': instance.category,
  'wallet': instance.wallet,
  'store_name': instance.storeName,
  'date': instance.date,
  'note': instance.note,
  'tax_amount': instance.taxAmount,
  'total_amount': instance.totalAmount,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
