part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `stock_levels` — a typo, a filter another entity has, `?q=` — is DROPPED and cannot appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class StockLevelsFilter implements Model {
    /// The literal `?created_at=` value this call was understood to carry.
    final String? created_at;

    /// The literal `?id=` value this call was understood to carry.
    final String? id;

    /// The literal `?location_id=` value this call was understood to carry.
    final String? location_id;

    /// The literal `?metadata=` value this call was understood to carry.
    final String? metadata;

    /// The literal `?on_hand=` value this call was understood to carry.
    final String? on_hand;

    /// The literal `?product_id=` value this call was understood to carry.
    final String? product_id;

    /// The literal `?reorder_point=` value this call was understood to carry.
    final String? reorder_point;

    /// The literal `?reserved=` value this call was understood to carry.
    final String? reserved;

    /// The literal `?sku=` value this call was understood to carry.
    final String? sku;

    /// The literal `?updated_at=` value this call was understood to carry.
    final String? updated_at;

    final Map<String, dynamic> data;

    StockLevelsFilter({
        this.created_at,
        this.id,
        this.location_id,
        this.metadata,
        this.on_hand,
        this.product_id,
        this.reorder_point,
        this.reserved,
        this.sku,
        this.updated_at,
        required this.data,
    });

    factory StockLevelsFilter.fromMap(Map<String, dynamic> map) {
        return StockLevelsFilter(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            location_id: map['location_id']?.toString(),
            metadata: map['metadata']?.toString(),
            on_hand: map['on_hand']?.toString(),
            product_id: map['product_id']?.toString(),
            reorder_point: map['reorder_point']?.toString(),
            reserved: map['reserved']?.toString(),
            sku: map['sku']?.toString(),
            updated_at: map['updated_at']?.toString(),
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
            "on_hand": on_hand,
            "product_id": product_id,
            "reorder_point": reorder_point,
            "reserved": reserved,
            "sku": sku,
            "updated_at": updated_at,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
