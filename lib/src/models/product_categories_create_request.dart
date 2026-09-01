part of '../../models.dart';

///
class ProductCategoriesCreateRequest implements Model {
  /// The category it is filed into. One row per (product, category), whichever way it got there.
  final String category_id;

  /// Sort order of this product inside the category.
  final int? position;

  /// The product filed into the category. Deleting the product deletes the membership with it.
  final String product_id;

  /// How the membership came about: 'manual' is hand-picked, 'rule' was materialized by a category rule. The two never touch each other — a recompute only ever inserts and deletes `rule` rows, so a hand-picked membership survives every pass.
  final enums.ProductCategoriesSource? source;

  ProductCategoriesCreateRequest({
    required this.category_id,
    this.position,
    required this.product_id,
    this.source,
  });

  factory ProductCategoriesCreateRequest.fromMap(Map<String, dynamic> map) {
    return ProductCategoriesCreateRequest(
      category_id: map['category_id'].toString(),
      position: map['position'],
      product_id: map['product_id'].toString(),
      source: map['source'] != null
          ? enums.ProductCategoriesSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "category_id": category_id,
      "position": position,
      "product_id": product_id,
      "source": source?.value,
    };
  }
}
