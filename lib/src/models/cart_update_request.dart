part of '../../models.dart';

/// Only safe columns are updatable — status moves through the lifecycle routes.
class CartUpdateRequest implements Model {
    /// 
    final String? channel_id;

    /// ISO 4217 code.
    final String? currency;

    /// 
    final String? market_id;

    /// Free-form metadata.
    final Map? metadata;

    /// 
    final String? name;

    CartUpdateRequest({
        this.channel_id,
        this.currency,
        this.market_id,
        this.metadata,
        this.name,
    });

    factory CartUpdateRequest.fromMap(Map<String, dynamic> map) {
        return CartUpdateRequest(
            channel_id: map['channel_id']?.toString(),
            currency: map['currency']?.toString(),
            market_id: map['market_id']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "currency": currency,
            "market_id": market_id,
            "metadata": metadata,
            "name": name,
        };
    }
}
