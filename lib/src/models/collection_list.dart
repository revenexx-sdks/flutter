part of '../../models.dart';

/// Collections List
class CollectionList implements Model {
    /// List of collections.
    final List<Collection> collections;

    /// Total number of collections that matched your query.
    final int total;

    CollectionList({
        required this.collections,
        required this.total,
    });

    factory CollectionList.fromMap(Map<String, dynamic> map) {
        return CollectionList(
            collections: List<Collection>.from(map['collections'].map((p) => Collection.fromMap(p))),
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
