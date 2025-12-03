import 'package:waltrack/domain/core/models/money_entity.dart';
import 'package:waltrack/domain/entity/category/category_entity.dart';

class TransactionDetailEntity {
  final int id;
  final String type;
  final CategoryEntity category;
  final String wallet;
  final String storeName;
  final String date;
  final String note;
  final List<TransactionItemEntity> items;
  final MoneyEntity taxAmount;
  final MoneyEntity totalAmount;
  final String createdAt;
  final String updatedAt;

  const TransactionDetailEntity({
    required this.id,
    required this.type,
    required this.category,
    required this.wallet,
    required this.storeName,
    required this.date,
    required this.note,
    required this.items,
    required this.taxAmount,
    required this.totalAmount,
    required this.createdAt,
    required this.updatedAt,
  });
}

class TransactionItemEntity {
  final String name;
  final int quantity;
  final MoneyEntity price;
  final MoneyEntity totalAmount;

  const TransactionItemEntity({
    required this.name,
    required this.quantity,
    required this.price,
    required this.totalAmount,
  });
}
