part of '../../models.dart';

/// A cart needs an owner: 'contact_id' (customer) or 'session_key' (guest).
class CartCreateRequest implements Model {
    /// The sales channel this cart is being opened in, as a channel of the channels app. Stored for attribution; nothing in this app reads it.
    final String? channel_id;

    /// The customer who owns this cart, as a contact of the customers app. Send this OR session_key — a cart with neither owner is refused.
    final String? contact_id;

    /// ISO 4217 code the cart is priced in (default EUR). Lines added without a currency inherit it.
    final String? currency;

    /// Make this THE current cart of its owner as it is created — the same thing carts.activate does later, and it clears the flag on every sibling cart of the same owner.
    final bool? is_current;

    /// Free-form data the storefront hangs on the cart. Stored and returned verbatim; no key in here is read by this app, and none is indexed.
    final Map? metadata;

    /// What the buyer calls this cart (default 'Cart'). An empty string is legal and lands on the default.
    final String? name;

    /// The guest session that owns this cart — the key the storefront already keeps in its own session or cookie. Any non-empty string is accepted; this app issues none and parses none, so the example shows a shape and not a format. Send this OR contact_id.
    final String? session_key;

    CartCreateRequest({
        this.channel_id,
        this.contact_id,
        this.currency,
        this.is_current,
        this.metadata,
        this.name,
        this.session_key,
    });

    factory CartCreateRequest.fromMap(Map<String, dynamic> map) {
        return CartCreateRequest(
            channel_id: map['channel_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            currency: map['currency']?.toString(),
            is_current: map['is_current'],
            metadata: map['metadata'],
            name: map['name']?.toString(),
            session_key: map['session_key']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "contact_id": contact_id,
            "currency": currency,
            "is_current": is_current,
            "metadata": metadata,
            "name": name,
            "session_key": session_key,
        };
    }
}
