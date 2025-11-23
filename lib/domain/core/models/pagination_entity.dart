class PaginationEntity<T> {
  final List<T> data;
  final PaginationMetaEntity meta;

  const PaginationEntity({
    required this.data,
    required this.meta,
  });
}

class PaginationMetaEntity {
  final int currentPage;
  final int? nextPage;
  final int lastPage;
  final int from;
  final int to;
  final int perPage;
  final int total;

  const PaginationMetaEntity({
    required this.currentPage,
    required this.nextPage,
    required this.lastPage,
    required this.from,
    required this.to,
    required this.perPage,
    required this.total,
  });
}
