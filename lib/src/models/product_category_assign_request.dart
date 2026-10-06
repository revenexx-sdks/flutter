part of '../../models.dart';

/// The category has to exist already; this route files a product into one, it does not create one.
class ProductCategoryAssignRequest implements Model {
  /// The category to file the product into.
  final String category_id;

  /// Sort order inside the category. Default 0.
  final int? position;

  ProductCategoryAssignRequest({
    required this.category_id,
    this.position,
  });

  factory ProductCategoryAssignRequest.fromMap(Map<String, dynamic> map) {
    return ProductCategoryAssignRequest(
      category_id: map['category_id'].toString(),
      position: map['position'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "category_id": category_id,
      "position": position,
    };
  }
}
