part of '../../models.dart';

/// One field in a collection schema.
class CollectionField implements Model {
  /// Whether the field can be faceted on.
  final bool? facet;

  ///
  final bool? index;

  ///
  final String name;

  ///
  final bool? optional;

  ///
  final bool? sort;

  /// Typesense field type, e.g. `string`, `int64`, `string[]`, `object`.
  final String type;

  final Map<String, dynamic> data;

  CollectionField({
    this.facet,
    this.index,
    required this.name,
    this.optional,
    this.sort,
    required this.type,
    required this.data,
  });

  factory CollectionField.fromMap(Map<String, dynamic> map) {
    return CollectionField(
      facet: map['facet'],
      index: map['index'],
      name: map['name'].toString(),
      optional: map['optional'],
      sort: map['sort'],
      type: map['type'].toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "facet": facet,
      "index": index,
      "name": name,
      "optional": optional,
      "sort": sort,
      "type": type,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
