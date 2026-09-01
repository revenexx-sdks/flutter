part of '../../models.dart';

/// Facet values and their counts for one faceted field.
class FacetCount implements Model {
    /// 
    final List<Map>? counts;

    /// 
    final String? field_name;

    final Map<String, dynamic> data;

    FacetCount({
        this.counts,
        this.field_name,
        required this.data,
    });

    factory FacetCount.fromMap(Map<String, dynamic> map) {
        return FacetCount(
            counts: List.from(map['counts'] ?? []),
            field_name: map['field_name']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "counts": counts,
            "field_name": field_name,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
