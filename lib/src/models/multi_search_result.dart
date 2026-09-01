part of '../../models.dart';

/// 
class MultiSearchResult implements Model {
    /// One result per entry in `searches`, in the same order.
    final List<SearchResult> results;

    MultiSearchResult({
        required this.results,
    });

    factory MultiSearchResult.fromMap(Map<String, dynamic> map) {
        return MultiSearchResult(
            results: List<SearchResult>.from(map['results'].map((p) => SearchResult.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "results": results.map((p) => p.toMap()).toList(),
        };
    }

    List<T> convertTo<T>(T Function(Map) fromJson) =>
        (results).map((d) => d.convertTo<T>(fromJson)).toList();
}
