part of '../../models.dart';

/// 
class CartConversion implements Model {
    /// When the cart was abandoned — by hand, or by the cart-maintenance sweep. This is the only instant the abandonment funnel has, and nothing else in the platform writes it. carts.reopen clears it.
    final String? abandoned_at;

    /// The sales channel the cart was opened in (web shop, app, agent desk), as a channel of the channels app. Carried to the order for attribution; nothing in this app reads it.
    final String? channel_id;

    /// The customer who owns this cart, as a contact of the customers app. Null on a guest cart: the database requires one of contact_id and session_key, never neither.
    final String? contact_id;

    /// When the cart was opened.
    final String? created_at;

    /// ISO 4217 code the whole cart is priced in. A line added without a currency of its own inherits this one.
    final String? currency;

    /// The cart, as every other route addresses it. Stable for the cart's whole life: a merge closes a cart, it never renumbers one.
    final String? id;

    /// THE current cart of this owner — the flag carts.activate writes, and reading it back is what `?is_current=true` is for. At most one cart per owner carries it: activating one clears it on every sibling, and abandoning, ordering or merging a cart clears it. A storefront resuming a session asks for it together with contact_id or session_key.
    final bool? is_current;

    /// Total QUANTITY in the cart, not the number of lines: the sum of every line's quantity, rounded. Two lines of five pieces each answer 10, not 2. Recomputed by this app after every line write — a value a client sends is ignored.
    final int? item_count;

    /// The market this cart is scoped to, stamped by the platform. It decides which market's settings apply — including the retention windows the sweep deletes on. Null on a cart that belongs to no market, which runs on the tenant baseline. Cart lines and io profiles carry no market of their own; a line's market is its cart's.
    final String? market_id;

    /// The cart this one was merged into, written together with status 'merged'. The lines are in the target now and this is the trail back — the answer to 'where did my cart go'. Null on every cart that was never merged.
    final String? merged_into_cart_id;

    /// Free-form data the storefront hangs on the cart. Stored and returned verbatim; no key in here is read by this app, and none is indexed.
    final Map? metadata;

    /// What the buyer calls this cart. B2B customers keep several named carts side by side — 'Weekly order', 'Site B', 'Q3 budget' — which is what multi_cart_enabled turns on; a storefront with one cart per buyer leaves it at the default 'Cart'.
    final String? name;

    /// The order this cart became, in whatever numbering order management uses. Free text: this app stores what it is handed and never resolves it. Filtering on it is how a support agent gets from an order number back to the cart behind it.
    final String? order_ref;

    /// When the cart was handed to order management. Written once, with the status, and never cleared.
    final String? ordered_at;

    /// How price_snapshot_mode settled the two prices every line carries.
    final CartConversionPricing? pricing;

    /// What this app ASKED inventories for, and what it answered. This app holds no stock: inventories picks the location, applies the backorder policy and owns the hold's expiry.
    final CartConversionReservation? reservation;

    /// How a cart is identified BEFORE anyone logs in — the opaque key the storefront already keeps in its own session or cookie and sends back on every anonymous call. This app neither issues nor parses it; any non-empty string is a valid key, so its format is the storefront's own. On login carts.claim hands every active cart of one session_key to a contact, and this becomes null.
    final String? session_key;

    /// Where the cart stands in its lifecycle. 'active' is the only status that accepts a write of any kind. 'abandoned' is set by hand or by the cart-maintenance sweep and is the one reversible ending (carts.reopen). 'ordered' and 'merged' are final — the cart is a record now, not a workspace.
    final enums.CartStatus? status;

    /// Sum of every line's line_total, in the cart's currency, net — before shipping, before tax. Recomputed after every line write, and written once more by carts.order when price_snapshot_mode settles which of a line's two prices is charged.
    final double? subtotal;

    /// The tenant this row belongs to, echoed by the data plane. Always the tenant the request was made for — it is not a way to reach another one.
    final String? tenant_id;

    /// The last time anything about this cart or its lines changed — every write path in this app stamps it. It is also what the maintenance sweep measures idleness with, which is why the abandonment sweep is the one write that deliberately does not touch it: noticing that a cart is idle must not reset the clock that decides how long it is kept.
    final String? updated_at;

    CartConversion({
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
        this.pricing,
        this.reservation,
        this.session_key,
        this.status,
        this.subtotal,
        this.tenant_id,
        this.updated_at,
    });

    factory CartConversion.fromMap(Map<String, dynamic> map) {
        return CartConversion(
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
            pricing: map['pricing'] != null ? CartConversionPricing.fromMap(map['pricing']) : null,
            reservation: map['reservation'] != null ? CartConversionReservation.fromMap(map['reservation']) : null,
            session_key: map['session_key']?.toString(),
            status: map['status'] != null ? enums.CartStatus.values.firstWhere((e) => e.value == map['status']) : null,
            subtotal: map['subtotal']?.toDouble(),
            tenant_id: map['tenant_id']?.toString(),
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
            "pricing": pricing?.toMap(),
            "reservation": reservation?.toMap(),
            "session_key": session_key,
            "status": status?.value,
            "subtotal": subtotal,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}
