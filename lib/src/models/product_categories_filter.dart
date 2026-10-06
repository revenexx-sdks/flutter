part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `product_categories` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class ProductCategoriesFilter implements Model {
  /// The literal `?category_id=` value this call was understood to carry.
  final String? category_id;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?position=` value this call was understood to carry.
  final String? position;

  /// The literal `?product_id=` value this call was understood to carry.
  final String? product_id;

  /// The literal `?source=` value this call was understood to carry.
  final String? source;

  final Map<String, dynamic> data;

  ProductCategoriesFilter({
    this.category_id,
    this.created_at,
    this.id,
    this.position,
    this.product_id,
    this.source,
    required this.data,
  });

  factory ProductCategoriesFilter.fromMap(Map<String, dynamic> map) {
    return ProductCategoriesFilter(
      category_id: map['category_id']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      position: map['position']?.toString(),
      product_id: map['product_id']?.toString(),
      source: map['source']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "category_id": category_id,
      "created_at": created_at,
      "id": id,
      "position": position,
      "product_id": product_id,
      "source": source,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
