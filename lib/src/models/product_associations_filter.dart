part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `product_associations` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class ProductAssociationsFilter implements Model {
  /// The literal `?association_type_id=` value this call was understood to carry.
  final String? association_type_id;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?position=` value this call was understood to carry.
  final String? position;

  /// The literal `?product_id=` value this call was understood to carry.
  final String? product_id;

  /// The literal `?quantity=` value this call was understood to carry.
  final String? quantity;

  /// The literal `?target_product_id=` value this call was understood to carry.
  final String? target_product_id;

  final Map<String, dynamic> data;

  ProductAssociationsFilter({
    this.association_type_id,
    this.created_at,
    this.id,
    this.position,
    this.product_id,
    this.quantity,
    this.target_product_id,
    required this.data,
  });

  factory ProductAssociationsFilter.fromMap(Map<String, dynamic> map) {
    return ProductAssociationsFilter(
      association_type_id: map['association_type_id']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      position: map['position']?.toString(),
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toString(),
      target_product_id: map['target_product_id']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "association_type_id": association_type_id,
      "created_at": created_at,
      "id": id,
      "position": position,
      "product_id": product_id,
      "quantity": quantity,
      "target_product_id": target_product_id,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
