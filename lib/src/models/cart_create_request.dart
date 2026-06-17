part of '../../models.dart';

/// A cart needs an owner: &#039;contact_id&#039; (customer) or &#039;session_key&#039; (guest).
class CartCreateRequest implements Model {
    /// 
    final String? channel_id;

    /// Owning customer contact.
    final String? contact_id;

    /// ISO 4217 code (default EUR).
    final String? currency;

    /// Make this THE current cart of its owner.
    final bool? is_current;

    /// 
    final String? market_id;

    /// Free-form metadata.
    final Map? metadata;

    /// Display name (default &#039;Cart&#039;).
    final String? name;

    /// Owning guest session.
    final String? session_key;

    CartCreateRequest({
        this.channel_id,
        this.contact_id,
        this.currency,
        this.is_current,
        this.market_id,
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
            market_id: map['market_id']?.toString(),
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
            "market_id": market_id,
            "metadata": metadata,
            "name": name,
            "session_key": session_key,
        };
    }
}
