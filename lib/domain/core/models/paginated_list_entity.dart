class PaginatedListEntity<T> {
  final List<T> data;
  final PaginatedListLinks links;
  final PaginatedListMeta meta;

  const PaginatedListEntity({
    required this.data,
    required this.links,
    required this.meta,
  });
}

class PaginatedListLinks {
  final String first;
  final String? last;
  final String? prev;
  final String? next;

  const PaginatedListLinks({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
}

class PaginatedListMeta {
  final int currentPage;
  final String currentPageUrl;
  final int from;
  final String path;
  final int perPage;
  final int to;

  const PaginatedListMeta({
    required this.currentPage,
    required this.currentPageUrl,
    required this.from,
    required this.path,
    required this.perPage,
    required this.to,
  });
}
