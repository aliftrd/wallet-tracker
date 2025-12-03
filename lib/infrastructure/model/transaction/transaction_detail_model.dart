import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/domain/entity/transaction/transaction_detail_entity.dart';
import 'package:waltrack/infrastructure/core/models/money_response.dart';
import 'package:waltrack/infrastructure/model/category/category_model.dart';

part 'transaction_detail_model.freezed.dart';
part 'transaction_detail_model.g.dart';

@freezed
abstract class TransactionDetailModel with _$TransactionDetailModel {
  const TransactionDetailModel._();

  const factory TransactionDetailModel({
    required int id,
    required String type,
    required CategoryModel category,
    required String wallet,
    @JsonKey(name: 'store_name') required String storeName,
    required String date,
    required String note,
    required List<TransactionItemModel> items,
    @JsonKey(name: 'tax_amount') required MoneyResponse taxAmount,
    @JsonKey(name: 'total_amount') required MoneyResponse totalAmount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _TransactionDetailModel;

  factory TransactionDetailModel.fromJson(Map<String, dynamic> json) => _$TransactionDetailModelFromJson(json);

  TransactionDetailEntity toEntity() => TransactionDetailEntity(
    id: id,
    type: type,
    category: category.toEntity(),
    wallet: wallet,
    storeName: storeName,
    date: date,
    note: note,
    items: items.map((e) => e.toEntity()).toList(),
    taxAmount: taxAmount.toEntity(),
    totalAmount: totalAmount.toEntity(),
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}

@freezed
abstract class TransactionItemModel with _$TransactionItemModel {
  const TransactionItemModel._();

  const factory TransactionItemModel({
    required String name,
    required int quantity,
    required MoneyResponse price,
    @JsonKey(name: 'total_amount') required MoneyResponse totalAmount,
  }) = _TransactionItemModel;

  factory TransactionItemModel.fromJson(Map<String, dynamic> json) => _$TransactionItemModelFromJson(json);

  TransactionItemEntity toEntity() => TransactionItemEntity(
    name: name,
    quantity: quantity,
    price: price.toEntity(),
    totalAmount: totalAmount.toEntity(),
  );
}
