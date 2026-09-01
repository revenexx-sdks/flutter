part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `stock_movements` — a typo, a filter another entity has, `?q=` — is DROPPED and cannot appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class StockMovementsFilter implements Model {
    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?location_id=` value this call was understood to carry.
    final String? location_id;

    /// The literal `?metadata=` value this call was understood to carry.
    final String? metadata;

    /// The literal `?order_ref=` value this call was understood to carry.
    final String? order_ref;

    /// The literal `?product_id=` value this call was understood to carry.
    final String? product_id;

    /// The literal `?quantity=` value this call was understood to carry.
    final String? quantity;

    /// The literal `?reason=` value this call was understood to carry.
    final String? reason;

    /// The literal `?sku=` value this call was understood to carry.
    final String? sku;

    /// The literal `?type=` value this call was understood to carry.
    final String? type;

    final Map<String, dynamic> data;

    StockMovementsFilter({
        this.created_at,
        this.id,
        this.location_id,
        this.metadata,
        this.order_ref,
        this.product_id,
        this.quantity,
        this.reason,
        this.sku,
        this.type,
        required this.data,
    });

    factory StockMovementsFilter.fromMap(Map<String, dynamic> map) {
        return StockMovementsFilter(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            location_id: map['location_id']?.toString(),
            metadata: map['metadata']?.toString(),
            order_ref: map['order_ref']?.toString(),
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toString(),
            reason: map['reason']?.toString(),
            sku: map['sku']?.toString(),
            type: map['type']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "id": id,
            "location_id": location_id,
            "metadata": metadata,
            "order_ref": order_ref,
            "product_id": product_id,
            "quantity": quantity,
            "reason": reason,
            "sku": sku,
            "type": type,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
