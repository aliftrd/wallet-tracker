import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/domain/entity/category/category_entity.dart';

part 'transaction_view_entity.freezed.dart';

@freezed
sealed class TransactionViewEntity with _$TransactionViewEntity {
  const TransactionViewEntity._();

  const factory TransactionViewEntity({
    required int id,
    required TransactionType type,
    required CategoryEntity category,
    required String wallet,
    required String storeName,
    required String date,
    required String? note,
    required String taxAmount,
    required String totalAmount,
    required String createdAt,
    required String updatedAt,
  }) = _TransactionViewEntity;
}
