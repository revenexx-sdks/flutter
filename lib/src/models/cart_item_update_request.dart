part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class CartItemUpdateRequest implements Model {
    /// What was configured on this line, in the configurator's own vocabulary — this app stores it and reads nothing out of it. Its mere PRESENCE is behaviour: a line that carries a configuration never merges with another, because two differently configured units of the same article are not one line. Keys are the configurator's; the example is one shape, not the shape.
    final Map? configuration;

    /// ISO 4217 code. Defaults to the cart's currency.
    final String? currency;

    /// Free-form data the storefront hangs on the line. Stored and returned verbatim; no key in here is read by this app.
    final Map? metadata;

    /// What the line reads as on the cart page. Falls back to 'sku' when omitted, so a line always has something to show.
    final String? name;

    /// Sort order within the cart, ascending. Default 0 when adding a line; in a bulk replace the payload order fills it in.
    final int? position;

    /// The catalogue product, when the line comes from one. Part of the merge identity: same product, same price, one line.
    final String? product_id;

    /// How much of it — default 1. Fractional is legal (2.5 m of cable); zero and negative are not. On a plain product line that merges into an existing one, this is ADDED to what is already there, and max_quantity_per_line is checked on the result.
    final double? quantity;

    /// The article number, exactly as the merchant knows it. Free text — this app does not resolve it against the catalogue — and part of the merge identity together with product_id and unit_price. The example only shows the shape of a real article number; nothing here enforces one.
    final String? sku;

    /// The product as the buyer was shown it when this line was added — the cart's own copy, so it stays honest when the catalogue moves underneath it. Free-form apart from the price: conversion reads `unit_price` (or `price` as a fallback) and nothing else. A snapshot without a readable price leaves the line alone in both price modes, which is deliberate — a missing snapshot must never be read as "free".
    final CartItemSnapshot? snapshot;

    /// VAT percent for this line, as a number (19 means 19 %). Stored for the order to use — no total in this app includes tax.
    final double? tax_rate;

    /// Line type (default 'product'). Plain product lines merge by product+price; configurations always stand alone.
    final enums.CartItemType? type;

    /// The unit the quantity is counted in. Display and ERP hand-over only — this app converts nothing.
    final String? unit;

    /// Net price of one unit — line_total is always derived from it, never sent. Part of the merge identity: the same article at a different price opens a new line rather than averaging into the old one.
    final double? unit_price;

    CartItemUpdateRequest({
        this.configuration,
        this.currency,
        this.metadata,
        this.name,
        this.position,
        this.product_id,
        this.quantity,
        this.sku,
        this.snapshot,
        this.tax_rate,
        this.type,
        this.unit,
        this.unit_price,
    });

    factory CartItemUpdateRequest.fromMap(Map<String, dynamic> map) {
        return CartItemUpdateRequest(
            configuration: map['configuration'],
            currency: map['currency']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            product_id: map['product_id']?.toString(),
            quantity: map['quantity']?.toDouble(),
            sku: map['sku']?.toString(),
            snapshot: map['snapshot'] != null ? CartItemSnapshot.fromMap(map['snapshot']) : null,
            tax_rate: map['tax_rate']?.toDouble(),
            type: map['type'] != null ? enums.CartItemType.values.firstWhere((e) => e.value == map['type']) : null,
            unit: map['unit']?.toString(),
            unit_price: map['unit_price']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "configuration": configuration,
            "currency": currency,
            "metadata": metadata,
            "name": name,
            "position": position,
            "product_id": product_id,
            "quantity": quantity,
            "sku": sku,
            "snapshot": snapshot?.toMap(),
            "tax_rate": tax_rate,
            "type": type?.value,
            "unit": unit,
            "unit_price": unit_price,
        };
    }
}
