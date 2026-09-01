part of '../../models.dart';

/// Envelope for a federated search. Top-level search parameters outside `searches` are forwarded to Typesense unchanged and act as defaults for every entry.
class MultiSearchRequest implements Model {
    /// The searches to run, in order. Must not be empty.
    final List<MultiSearchEntry> searches;

    final Map<String, dynamic> data;

    MultiSearchRequest({
        required this.searches,
        required this.data,
    });

    factory MultiSearchRequest.fromMap(Map<String, dynamic> map) {
        return MultiSearchRequest(
            searches: List<MultiSearchEntry>.from(map['searches'].map((p) => MultiSearchEntry.fromMap(p))),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "searches": searches.map((p) => p.toMap()).toList(),
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);

    List<T> convertToSearches<T>(T Function(Map) fromJson) =>
        (searches).map((d) => d.convertTo<T>(fromJson)).toList();
}
