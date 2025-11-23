import 'package:waltrack/domain/core/models/pagination_entity.dart';

typedef FromJsonMap<T> = T Function(Map<String, dynamic>);

class BasePagination<T> {
  final List<T> data;
  final PaginationMeta meta;

  BasePagination({
    required this.data,
    required this.meta,
  });

  factory BasePagination.fromJson(Map<String, dynamic> json, FromJsonMap<T> fromJsonItem) {
    final List<dynamic> rawList = json['data'] as List<dynamic>? ?? [];

    return BasePagination<T>(
      data: rawList.map((e) => fromJsonItem(e as Map<String, dynamic>)).toList(),
      meta: PaginationMeta.fromJson((json['meta'] ?? <String, dynamic>{}) as Map<String, dynamic>),
    );
  }
}

class PaginationMeta {
  final int currentPage;
  final int? nextPage;
  final int lastPage;
  final int from;
  final int to;
  final int perPage;
  final int total;

  PaginationMeta({
    required this.currentPage,
    required this.nextPage,
    required this.lastPage,
    required this.from,
    required this.to,
    required this.perPage,
    required this.total,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) {
    return PaginationMeta(
      currentPage: json['current_page'] ?? 1,
      nextPage: json['next_page'],
      lastPage: json['last_page'] ?? 1,
      from: json['from'] ?? 0,
      to: json['to'] ?? 0,
      perPage: json['per_page'] ?? 0,
      total: json['total'] ?? 0,
    );
  }

  PaginationMetaEntity toEntity() {
    return PaginationMetaEntity(
      currentPage: currentPage,
      nextPage: nextPage,
      lastPage: lastPage,
      from: from,
      to: to,
      perPage: perPage,
      total: total,
    );
  }
}

extension PaginationJsonX on Map<String, dynamic> {
  BasePagination<T> toPagination<T>(FromJsonMap<T> fromJsonItem) {
    return BasePagination<T>.fromJson(this, fromJsonItem);
  }
}
