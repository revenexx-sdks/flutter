part of '../../models.dart';

/// A Typesense search response, passed through verbatim.
class SearchResult implements Model {
    /// 
    final List<FacetCount>? facet_counts;

    /// Total matching documents.
    final int? found;

    /// 
    final List<SearchHit>? hits;

    /// Documents searched.
    final int? out_of;

    /// 1-based page this result is for.
    final int? page;

    /// 
    final int? search_time_ms;

    final Map<String, dynamic> data;

    SearchResult({
        this.facet_counts,
        this.found,
        this.hits,
        this.out_of,
        this.page,
        this.search_time_ms,
        required this.data,
    });

    factory SearchResult.fromMap(Map<String, dynamic> map) {
        return SearchResult(
            facet_counts: map['facet_counts'] != null ? List<FacetCount>.from(map['facet_counts'].map((p) => FacetCount.fromMap(p))) : null,
            found: map['found'],
            hits: map['hits'] != null ? List<SearchHit>.from(map['hits'].map((p) => SearchHit.fromMap(p))) : null,
            out_of: map['out_of'],
            page: map['page'],
            search_time_ms: map['search_time_ms'],
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "facet_counts": facet_counts?.map((p) => p.toMap()).toList(),
            "found": found,
            "hits": hits?.map((p) => p.toMap()).toList(),
            "out_of": out_of,
            "page": page,
            "search_time_ms": search_time_ms,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);

    List<T> convertToFacetCounts<T>(T Function(Map) fromJson) =>
        (facet_counts ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();

    List<T> convertToHits<T>(T Function(Map) fromJson) =>
        (hits ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
