
class TmdbListResult<T> {
  late final int page;
  late final T results;
  late final int totalPages;
  late final int totalResults;

  static TmdbListResult fromJson(Map<String, dynamic> json) => TmdbListResult()
    ..page = json['page'] as int
    ..results = json['results']
    ..totalPages = json['total_pages'] as int
    ..totalResults = json['total_results'] as int;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'page': page,
        'results': results,
        'total_pages': totalPages,
        'total_results': totalResults,
      };
}
