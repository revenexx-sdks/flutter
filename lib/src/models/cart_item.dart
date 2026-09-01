part of '../../models.dart';

/// 
class CartItem implements Model {
    /// The cart this line belongs to. A line never moves between carts — a merge copies it into the target and closes the source cart.
    final String? cart_id;

    /// What was configured on this line, in the configurator's own vocabulary — this app stores it and reads nothing out of it. Its mere PRESENCE is behaviour: a line that carries a configuration never merges with another, because two differently configured units of the same article are not one line. Keys are the configurator's; the example is one shape, not the shape.
    final Map? configuration;

    /// When the line was added. A merge into an existing line keeps the original — the quantity moved, the line did not.
    final String? created_at;

    /// ISO 4217 code this line is priced in. Defaults to the cart's currency when a line is added without one.
    final String? currency;

    /// The line, as carts.items.get/update/delete address it.
    final String? id;

    /// quantity × unit_price, net, always derived. A line_total in a payload is ignored: the cart may not disagree with its own arithmetic.
    final double? line_total;

    /// Free-form data the storefront hangs on the line. Stored and returned verbatim; no key in here is read by this app.
    final Map? metadata;

    /// What the line reads as on the cart page. Falls back to the SKU when a caller sends none, so a line always has something to show.
    final String? name;

    /// Sort order within the cart, ascending. Lines come back in this order unless `order` says otherwise, and a bulk replace numbers them by their place in the payload.
    final int? position;

    /// The catalogue product this line came from, when it came from one. Null on a custom line, and null on a product line the storefront identified by SKU alone.
    final String? product_id;

    /// How much of it. Fractional on purpose — 2.5 metres of cable is a line, not a rounding error — and always greater than zero: removing a line is a DELETE, not a quantity of 0.
    final double? quantity;

    /// The article number the merchant sorts by in the ERP — the value every integration joins on. Free text here: this app does not resolve it against the catalogue, so it is exactly what the storefront wrote into the line. Together with product_id and unit_price it decides whether adding the same article again lands on this line or opens a new one.
    final String? sku;

    /// The product as the buyer was shown it when this line was added — the cart's own copy, so it stays honest when the catalogue moves underneath it. Free-form apart from the price: conversion reads `unit_price` (or `price` as a fallback) and nothing else. A snapshot without a readable price leaves the line alone in both price modes, which is deliberate — a missing snapshot must never be read as "free".
    final CartItemSnapshot? snapshot;

    /// VAT percent for this line, as a number (19 means 19 %). Stored with the line for the order to use — no total in this app includes tax.
    final double? tax_rate;

    /// The tenant this row belongs to, echoed by the data plane.
    final String? tenant_id;

    /// What kind of line this is. 'product' is a catalogue line and the only type that ever merges with another. 'configuration' is a configured product — it carries its configuration and always stands alone, because two differently configured units of the same article are not the same line. 'custom' is a free line nobody has to find in a catalogue: a service, a surcharge, a hand-typed position.
    final enums.CartItemType? type;

    /// The unit the quantity is counted in ('pcs', 'm', 'kg', 'h'). Display and ERP hand-over only; this app converts nothing.
    final String? unit;

    /// Net price of ONE unit, in the line's currency. This is the working price — a resync, a PUT on the line or a repricing job may have moved it since the buyer saw it. The price the buyer WAS shown lives in snapshot, and carts.order decides which of the two the order is booked on.
    final double? unit_price;

    /// When the line last changed — including a quantity another add merged into it.
    final String? updated_at;

    CartItem({
        this.cart_id,
        this.configuration,
        this.created_at,
        this.currency,
        this.id,
        this.line_total,
        this.metadata,
        this.name,
        this.position,
        this.product_id,
        this.quantity,
        this.sku,
        this.snapshot,
        this.tax_rate,
        this.tenant_id,
        this.type,
        this.unit,
        this.unit_price,
        this.updated_at,
    });

    factory CartItem.fromMap(Map<String, dynamic> map) {
        return CartItem(
            cart_id: map['cart_id']?.toString(),
            configuration: map['configuration'],
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            id: map['id']?.toString(),
            line_total: map['line_total']?.toDouble(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'] != null ? CartItemSnapshot.fromMap(map['snapshot']) : null,
            tax_rate: map['tax_rate']?.toDouble(),
            tenant_id: map['tenant_id']?.toString(),
            type: map['type'] != null ? enums.CartItemType.values.firstWhere((e) => e.value == map['type']) : null,
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cart_id": cart_id,
            "configuration": configuration,
            "created_at": created_at,
            "currency": currency,
            "id": id,
            "line_total": line_total,
            "metadata": metadata,
            "name": name,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot?.toMap(),
            "tax_rate": tax_rate,
            "tenant_id": tenant_id,
            "type": type?.value,
            "unit": unit,
            "unit_price": unit_price,
            "updated_at": updated_at,
        };
    }
}
