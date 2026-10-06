part of '../../models.dart';

///
class CollectionList implements Model {
  /// Public collection names the tenant owns. These are the values accepted for the `collection` path parameter.
  final List<String> collections;

  CollectionList({
    required this.collections,
  });

  factory CollectionList.fromMap(Map<String, dynamic> map) {
    return CollectionList(
      collections: List.from(map['collections'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "collections": collections,
    };
  }
}
