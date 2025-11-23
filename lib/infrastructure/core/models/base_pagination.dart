typedef FromJsonMap<T> = T Function(Map<String, dynamic>);

class BasePagination<T> {
  final List<T> data;
  final BasePaginationLinks links;
  final BasePaginationMeta meta;

  BasePagination({
    required this.data,
    required this.links,
    required this.meta,
  });

  factory BasePagination.fromJson(
    Map<String, dynamic> json,
    List<T> Function(List<dynamic>) fromJsonData,
  ) {
    return BasePagination(
      data: json['data'] != null ? fromJsonData(json['data'] as List<dynamic>) : <T>[],
      links: BasePaginationLinks.fromJson(json['links']),
      meta: BasePaginationMeta.fromJson(json['meta']),
    );
  }
}

class BasePaginationLinks {
  final String first;
  final String? last;
  final String? prev;
  final String? next;

  BasePaginationLinks({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });

  factory BasePaginationLinks.fromJson(Map<String, dynamic> json) {
    return BasePaginationLinks(
      first: json['first'] ?? '',
      last: json['last'] ?? '',
      prev: json['prev'] ?? '',
      next: json['next'] ?? '',
    );
  }
}

class BasePaginationMeta {
  final int currentPage;
  final String currentPageUrl;
  final int from;
  final String path;
  final int perPage;
  final int to;

  BasePaginationMeta({
    required this.currentPage,
    required this.currentPageUrl,
    required this.from,
    required this.path,
    required this.perPage,
    required this.to,
  });

  factory BasePaginationMeta.fromJson(Map<String, dynamic> json) {
    return BasePaginationMeta(
      currentPage: json['current_page'] as int? ?? 1,
      currentPageUrl: json['current_page_url'] ?? '',
      from: json['from'] ?? 1,
      path: json['path'] ?? '',
      perPage: json['per_page'] ?? 10,
      to: json['to'] ?? 1,
    );
  }
}

extension PaginationJsonX on Map<String, dynamic> {
  BasePagination<T> toPagination<T>(FromJsonMap<T> fromJsonItem) {
    return BasePagination<T>.fromJson(
      this,
      (list) => list.map((e) => fromJsonItem(e as Map<String, dynamic>)).toList(),
    );
  }
}
