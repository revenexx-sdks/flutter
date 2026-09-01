part of '../../models.dart';

/// Import into an existing cart ('target_cart_id') or a new cart (owner 'contact_id'/'session_key' required).
class CartImportRequest implements Model {
    /// Owner of the cart this import creates. Ignored when target_cart_id is sent.
    final String? contact_id;

    /// The CSV rows, when that is easier than putting them in `payload`. First line is the header, and its names are the ones the profile's mapping expects (the bundled quick-order template reads sku, name, quantity, unit_price). Numbers are coerced; a JSON column survives as a JSON string.
    final String? csv;

    /// Name for the cart this import creates. A name in the payload's own `cart` block wins over it; without either the cart is called 'Imported cart'.
    final String? name;

    /// The import itself. As an object: `{ "cart": { name, status, currency, channel_id, metadata }, "items": [ … ] }` — the same document carts.export produces, so an export round-trips. As a string: that document as raw JSON, or CSV rows when the profile is a csv one. A line with neither `name` nor `sku` is dropped, and a payload that leaves no line at all is a 400.
    final Map? payload;

    /// The import profile to run — one of the ids `GET /carts/io/profiles?direction=import` lists. Omit it for an ad-hoc import: the payload is then read in the canonical shape, and as CSV if `csv` is what carried it.
    final String? profile_id;

    /// Guest owner of the cart this import creates — the storefront's own session key. Ignored when target_cart_id is sent.
    final String? session_key;

    /// An existing ACTIVE cart to import into. The lines are added to it (merging identical product lines), unless the profile says `apply_mode: replace`, which clears it first. Without this a new cart is created and an owner is required.
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
