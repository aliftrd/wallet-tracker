import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
sealed class CategoryEntity with _$CategoryEntity {
  const CategoryEntity._();

  const factory CategoryEntity({
    required int id,
    required String name,
    required String type,
    required Color color,
    required IconData icon,
  }) = _CategoryEntity;
}
