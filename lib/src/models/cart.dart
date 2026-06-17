part of '../../models.dart';

/// 
class Cart implements Model {
    /// 
    final String? abandoned_at;

    /// 
    final String? channel_id;

    /// 
    final String? contact_id;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? id;

    /// 
    final bool? is_current;

    /// 
    final int? item_count;

    /// 
    final String? market_id;

    /// 
    final String? merged_into_cart_id;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final String? order_ref;

    /// 
    final String? ordered_at;

    /// 
    final String? session_key;

    /// 
    final String? status;

    /// 
    final double? subtotal;

    /// 
    final String? updated_at;

    Cart({
        this.abandoned_at,
        this.channel_id,
        this.contact_id,
        this.created_at,
        this.currency,
        this.id,
        this.is_current,
        this.item_count,
        this.market_id,
        this.merged_into_cart_id,
        this.metadata,
        this.name,
        this.order_ref,
        this.ordered_at,
        this.session_key,
        this.status,
        this.subtotal,
        this.updated_at,
    });

    factory Cart.fromMap(Map<String, dynamic> map) {
        return Cart(
            abandoned_at: map['abandoned_at']?.toString(),
            channel_id: map['channel_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            id: map['id']?.toString(),
            is_current: map['is_current'],
            item_count: map['item_count'],
            market_id: map['market_id']?.toString(),
            merged_into_cart_id: map['merged_into_cart_id']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            order_ref: map['order_ref']?.toString(),
            ordered_at: map['ordered_at']?.toString(),
            session_key: map['session_key']?.toString(),
            status: map['status']?.toString(),
            subtotal: map['subtotal']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "abandoned_at": abandoned_at,
            "channel_id": channel_id,
            "contact_id": contact_id,
            "created_at": created_at,
            "currency": currency,
            "id": id,
            "is_current": is_current,
            "item_count": item_count,
            "market_id": market_id,
            "merged_into_cart_id": merged_into_cart_id,
            "metadata": metadata,
            "name": name,
            "order_ref": order_ref,
            "ordered_at": ordered_at,
            "session_key": session_key,
            "status": status,
            "subtotal": subtotal,
            "updated_at": updated_at,
        };
    }
}
