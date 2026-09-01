part of '../../models.dart';

/// What was measured and stored into `products.completeness` by this call — how much of what the family requires the product actually carries.
class ProductCompleteness implements Model {
    /// When this measurement was taken. It is a snapshot: editing the product does not update it, the next `POST /products/{id}/completeness` does.
    final String? computed_at;

    /// How many of those carry a value — in ANY bucket, so a name held only in German counts.
    final int? filled;

    /// Attribute codes with no value in any bucket.
    final List<String>? missing;

    /// filled / required, 0..1. A family that requires nothing is 1, not undefined.
    final double? ratio;

    /// Attributes the product's family marks is_required.
    final int? xrequired;

    ProductCompleteness({
        this.computed_at,
        this.filled,
        this.missing,
        this.ratio,
        this.xrequired,
    });

    factory ProductCompleteness.fromMap(Map<String, dynamic> map) {
        return ProductCompleteness(
            computed_at: map['computed_at']?.toString(),
            filled: map['filled'],
            missing: List.from(map['missing'] ?? []),
            ratio: map['ratio']?.toDouble(),
            xrequired: map['required'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "computed_at": computed_at,
            "filled": filled,
            "missing": missing,
            "ratio": ratio,
            "required": xrequired,
        };
    }
}
