part of '../../models.dart';

/// A stock row tracks an item: &#039;product_id&#039; or &#039;sku&#039;.
class StockLevelCreateRequest implements Model {
    /// Owning location.
    final String location_id;

    /// Free-form metadata.
    final Map? metadata;

    /// Physical stock (default 0).
    final double? on_hand;

    /// Tracked product.
    final String? product_id;

    /// 
    final double? reorder_point;

    /// Reserved stock (default 0) — normally managed by reserve/release/commit.
    final double? reserved;

    /// Tracked SKU (alternative to product_id).
    final String? sku;

    StockLevelCreateRequest({
        required this.location_id,
        this.metadata,
        this.on_hand,
        this.product_id,
        this.reorder_point,
        this.reserved,
        this.sku,
    });

    factory StockLevelCreateRequest.fromMap(Map<String, dynamic> map) {
        return StockLevelCreateRequest(
            location_id: map['location_id'].toString(),
            metadata: map['metadata'],
            on_hand: map['on_hand']?.toDouble(),
            product_id: map['product_id']?.toString(),
            reorder_point: map['reorder_point']?.toDouble(),
            reserved: map['reserved']?.toDouble(),
            sku: map['sku']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "location_id": location_id,
            "metadata": metadata,
            "on_hand": on_hand,
            "product_id": product_id,
            "reorder_point": reorder_point,
            "reserved": reserved,
            "sku": sku,
        };
    }
}
