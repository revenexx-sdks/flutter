part of '../../models.dart';

/// Collections List
class CollectionList2 implements Model {
    /// List of collections.
    final List<Collection2> collections;

    /// Total number of collections that matched your query.
    final int total;

    CollectionList2({
        required this.collections,
        required this.total,
    });

    factory CollectionList2.fromMap(Map<String, dynamic> map) {
        return CollectionList2(
            collections: List<Collection2>.from(map['collections'].map((p) => Collection2.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "collections": collections.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
