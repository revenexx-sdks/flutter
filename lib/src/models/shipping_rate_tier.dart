part of '../../models.dart';

///
class ShippingRateTier implements Model {
  /// When the row was created (UTC).
  final String? created_at;

  /// Lower bound of this tier, in the method's matrix measure — kilograms (or whatever the market's `weight_unit` names, converted through its factor) for a weight matrix, items for quantity, money in the method's currency for order_value, and the raw attribute value for 'attribute'. INCLUSIVE: the tier applies from this value upward, and the tier that wins is the one with the highest from_value at or below the measured value, so a measure of exactly 10 is priced by the tier at 10 rather than the one below it. The last tier has no upper bound. Unique per method — a second tier at the same threshold is a 409, because which of the two won would be whatever the database returned first.
  final double? from_value;

  /// Row id, assigned by the database on insert.
  final String? id;

  /// The shipping method this tier prices. Set from the path on every write, so a body that names another method is ignored rather than obeyed. ON DELETE CASCADE: deleting the method deletes its table.
  final String? method_id;

  /// Display order in the matrix editor (default 0; a bulk replace derives it from the array index). Pricing reads from_value, never this.
  final int? position;

  /// What this tier costs, in the method's currency. Charged in full for the whole consignment — a matrix is a lookup table, not a rate per unit.
  final double? price;

  /// When the row was last written (UTC).
  final String? updated_at;

  ShippingRateTier({
    this.created_at,
    this.from_value,
    this.id,
    this.method_id,
    this.position,
    this.price,
    this.updated_at,
  });

  factory ShippingRateTier.fromMap(Map<String, dynamic> map) {
    return ShippingRateTier(
      created_at: map['created_at']?.toString(),
      from_value: map['from_value']?.toDouble(),
      id: map['id']?.toString(),
      method_id: map['method_id']?.toString(),
      position: map['position'],
      price: map['price']?.toDouble(),
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "from_value": from_value,
      "id": id,
      "method_id": method_id,
      "position": position,
      "price": price,
      "updated_at": updated_at,
    };
  }
}
