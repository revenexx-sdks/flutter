part of '../../models.dart';

/// A position left out of the conversion because the catalogue no longer knows its article (only ever non-empty when the tenant's 'on_missing_article' setting is 'skip').
class OrderListSkippedPosition implements Model {
  /// The position that was left out, so a client can point at the row in the list.
  final String? id;

  /// The saved article name, so the omission can be reported to the buyer in words they recognise.
  final String? name;

  /// The catalogue product the position named, if it named one.
  final String? product_id;

  /// The article number the position named, if it named one.
  final String? sku;

  OrderListSkippedPosition({
    this.id,
    this.name,
    this.product_id,
    this.sku,
  });

  factory OrderListSkippedPosition.fromMap(Map<String, dynamic> map) {
    return OrderListSkippedPosition(
      id: map['id']?.toString(),
      name: map['name']?.toString(),
      product_id: map['product_id']?.toString(),
      sku: map['sku']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "product_id": product_id,
      "sku": sku,
    };
  }
}
