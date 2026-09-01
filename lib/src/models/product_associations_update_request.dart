part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ProductAssociationsUpdateRequest implements Model {
    /// Which kind of relation this is — the `association_types` row.
    final String? association_type_id;

    /// Order in which the targets are shown, ascending.
    final int? position;

    /// The product the relation starts at — the one whose detail page shows it.
    final String? product_id;

    /// How many of the target belong to the source — the 4 in "this bundle contains 4 casters". Only meaningful when the association type carries `is_quantified`; null on an ordinary cross-sell.
    final double? quantity;

    /// The product the relation points at — the accessory, the spare part, the cross-sell.
    final String? target_product_id;

    ProductAssociationsUpdateRequest({
        this.association_type_id,
        this.position,
        this.product_id,
        this.quantity,
        this.target_product_id,
    });

    factory ProductAssociationsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ProductAssociationsUpdateRequest(
            association_type_id: map['association_type_id']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            target_product_id: map['target_product_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "association_type_id": association_type_id,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "target_product_id": target_product_id,
        };
    }
}
