part of '../../models.dart';

/// Import into an existing cart (&#039;target_cart_id&#039;) or a new cart (owner &#039;contact_id&#039;/&#039;session_key&#039; required).
class CartImportRequest implements Model {
    /// Owner of a newly created cart.
    final String? contact_id;

    /// Raw CSV content (alternative to payload for csv profiles).
    final String? csv;

    /// Name for a newly created cart.
    final String? name;

    /// The import payload: &#039;{cart, items}&#039; object, or a raw JSON/CSV string in the profile&#039;s format.
    final Map? payload;

    /// Import profile to run; ad-hoc import when omitted.
    final String? profile_id;

    /// Guest owner of a newly created cart.
    final String? session_key;

    /// Existing active cart to import into.
    final String? target_cart_id;

    CartImportRequest({
        this.contact_id,
        this.csv,
        this.name,
        this.payload,
        this.profile_id,
        this.session_key,
        this.target_cart_id,
    });

    factory CartImportRequest.fromMap(Map<String, dynamic> map) {
        return CartImportRequest(
            contact_id: map['contact_id']?.toString(),
            csv: map['csv']?.toString(),
            name: map['name']?.toString(),
            payload: map['payload'],
            profile_id: map['profile_id']?.toString(),
            session_key: map['session_key']?.toString(),
            target_cart_id: map['target_cart_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact_id": contact_id,
            "csv": csv,
            "name": name,
            "payload": payload,
            "profile_id": profile_id,
            "session_key": session_key,
            "target_cart_id": target_cart_id,
        };
    }
}
