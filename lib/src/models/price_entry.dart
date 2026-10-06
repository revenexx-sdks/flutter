part of '../../models.dart';

/// One rung of one item’s quantity ladder inside one price list. The ladder IS the set of entries sharing an identity (product_id or sku); the amount is in the LIST’s currency and on the LIST’s tax basis.
class PriceEntry implements Model {
  /// When the entry was created.
  final String? created_at;

  /// The entry itself — one rung of one item’s quantity ladder.
  final String? id;

  /// Free-form bag, unvalidated and never read by this app: whatever JSON object you write round-trips exactly. Its keys are the integration’s own, e.g. {"source_system": "erp", "imported_batch": "2026-02-14"}.
  final Map<String, dynamic>? metadata;

  /// The price list this entry belongs to, and therefore the currency and tax basis its amount is on. Set from the path on write.
  final String? price_list_id;

  /// `standard` is a number. `on_request` is the explicit no-price marker: it STOPS resolution for this item on this list and answers price-on-request, even where a cheaper list exists — the list is authoritative for this buyer and it says "ask us".
  final enums.PriceEntryType? price_type;

  /// The product this rung prices. An entry needs `product_id` or `sku` (a row CHECK enforces it); an entry that carries both prices whichever of the two the resolve item names.
  final String? product_id;

  /// Lowest quantity this price applies from (Staffelpreis). The ladder for one item is the set of entries sharing its identity: the rung with the HIGHEST quantity_min at or below the requested quantity wins, and below the first rung the first rung’s price applies — a minimum order quantity belongs to the catalog, not to the ladder.
  final double? quantity_min;

  /// The article number this rung prices, for a price book keyed by SKU rather than by product id — matched exactly, never normalised or case-folded.
  final String? sku;

  /// The unit of measure the price is per — ‘pcs’, ‘m’, ‘kg’, a packaging size. Free text: this app neither validates nor converts it, and the `quantity` of a resolve call is counted in it.
  final String? unit;

  /// Price for ONE unit of `unit`, expressed in the list’s `currency` and on the list’s `tax_basis` — a decimal amount in major units (19.90 EUR), never minor units/cents. Stored at 4 decimals so a per-1000-piece price survives, and echoed back exactly as it was written; only DERIVED amounts (net, gross, line totals) are rounded to the tenant’s `price_precision`.
  final double? unit_price;

  /// When the entry last changed. A bulk adjust only writes the rows whose price actually moved, so this is a real "the price changed here" marker.
  final String? updated_at;

  /// Start of this entry’s own validity; null = open-ended. This is how a promo price is expressed — a second rung for the same item and quantity, live only for its window.
  final String? valid_from;

  /// End of this entry’s own validity; null = open-ended. Outside the window the rung is skipped and the ladder resolves as if it were not there.
  final String? valid_until;

  PriceEntry({
    this.created_at,
    this.id,
    this.metadata,
    this.price_list_id,
    this.price_type,
    this.product_id,
    this.quantity_min,
    this.sku,
    this.unit,
    this.unit_price,
    this.updated_at,
    this.valid_from,
    this.valid_until,
  });

  factory PriceEntry.fromMap(Map<String, dynamic> map) {
    return PriceEntry(
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      metadata: map['metadata'],
      price_list_id: map['price_list_id']?.toString(),
      price_type: map['price_type'] != null
          ? enums.PriceEntryType.values
              .firstWhere((e) => e.value == map['price_type'])
          : null,
      product_id: map['product_id']?.toString(),
      quantity_min: map['quantity_min']?.toDouble(),
      sku: map['sku']?.toString(),
      unit: map['unit']?.toString(),
      unit_price: map['unit_price']?.toDouble(),
      updated_at: map['updated_at']?.toString(),
      valid_from: map['valid_from']?.toString(),
      valid_until: map['valid_until']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "id": id,
      "metadata": metadata,
      "price_list_id": price_list_id,
      "price_type": price_type?.value,
      "product_id": product_id,
      "quantity_min": quantity_min,
      "sku": sku,
      "unit": unit,
      "unit_price": unit_price,
      "updated_at": updated_at,
      "valid_from": valid_from,
      "valid_until": valid_until,
    };
  }
}
