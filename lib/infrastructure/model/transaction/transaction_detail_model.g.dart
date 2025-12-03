// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionDetailModel _$TransactionDetailModelFromJson(
  Map<String, dynamic> json,
) => _TransactionDetailModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  category: CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  wallet: json['wallet'] as String,
  storeName: json['store_name'] as String,
  date: json['date'] as String,
  note: json['note'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => TransactionItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  taxAmount: MoneyResponse.fromJson(json['tax_amount'] as Map<String, dynamic>),
  totalAmount: MoneyResponse.fromJson(
    json['total_amount'] as Map<String, dynamic>,
  ),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$TransactionDetailModelToJson(
  _TransactionDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'category': instance.category,
  'wallet': instance.wallet,
  'store_name': instance.storeName,
  'date': instance.date,
  'note': instance.note,
  'items': instance.items,
  'tax_amount': instance.taxAmount,
  'total_amount': instance.totalAmount,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

_TransactionItemModel _$TransactionItemModelFromJson(
  Map<String, dynamic> json,
) => _TransactionItemModel(
  name: json['name'] as String,
  quantity: (json['quantity'] as num).toInt(),
  price: MoneyResponse.fromJson(json['price'] as Map<String, dynamic>),
  totalAmount: MoneyResponse.fromJson(
    json['total_amount'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TransactionItemModelToJson(
  _TransactionItemModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
  'total_amount': instance.totalAmount,
};
