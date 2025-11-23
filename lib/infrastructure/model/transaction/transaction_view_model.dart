import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/domain/entity/transaction/transaction_view_entity.dart';
import 'package:waltrack/infrastructure/model/category/category_model.dart';

part 'transaction_view_model.freezed.dart';
part 'transaction_view_model.g.dart';

@freezed
abstract class TransactionViewModel with _$TransactionViewModel {
  const TransactionViewModel._();

  const factory TransactionViewModel({
    required int id,
    required String type,
    required CategoryModel category,
    required String wallet,
    @JsonKey(name: 'store_name') required String storeName,
    required String date,
    required String note,
    @JsonKey(name: 'tax_amount') required String taxAmount,
    @JsonKey(name: 'total_amount') required String totalAmount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _TransactionViewModel;

  factory TransactionViewModel.fromJson(Map<String, dynamic> json) => _$TransactionViewModelFromJson(json);

  TransactionViewEntity toEntity() => TransactionViewEntity(
    id: id,
    type: TransactionType.values.firstWhere((e) => e.name == type),
    category: category.toEntity(),
    wallet: wallet,
    storeName: storeName,
    date: date,
    note: note,
    taxAmount: taxAmount,
    totalAmount: totalAmount,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
