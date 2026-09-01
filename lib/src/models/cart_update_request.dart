part of '../../models.dart';

/// Only safe columns are updatable — status moves through the lifecycle routes.
class CartUpdateRequest implements Model {
    /// Move the cart to another sales channel.
    final String? channel_id;

    /// ISO 4217 code. Changes what NEW lines inherit; lines already in the cart keep the currency they were added with.
    final String? currency;

    /// Free-form data the storefront hangs on the cart. Stored and returned verbatim; no key in here is read by this app, and none is indexed.
    final Map? metadata;

    /// Rename the cart. Unlike on create, this is written verbatim — `null` and `''` are refused by the database.
    final String? name;

    CartUpdateRequest({
        this.channel_id,
        this.currency,
        this.metadata,
        this.name,
    });

    factory CartUpdateRequest.fromMap(Map<String, dynamic> map) {
        return CartUpdateRequest(
            channel_id: map['channel_id']?.toString(),
            currency: map['currency']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "currency": currency,
            "metadata": metadata,
            "name": name,
        };
    }
}
