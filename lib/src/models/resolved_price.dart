part of '../../models.dart';

/// What one item costs this buyer, and which list said so.
class ResolvedPrice implements Model {
  /// ISO 4217 currency of every amount on this item. Always the winning list’s currency, which always equals the call’s top-level `currency` — resolution only considers lists that match it, so a list and its answer can never disagree. null on an on-request item.
  final String? currency;

  /// Present ONLY on an item that named neither `product_id` nor `sku`, and always with this exact text. The call still answers 200 and the item comes back on_request, because one malformed line must not cost a whole cart its prices.
  final String? error;

  /// `unit_price × quantity`, on the SAME basis as `unit_price` (so net if the list is net) and rounded to `basis.price_precision`. Not a tax-adjusted total — a cart computes its own from the net/gross pair.
  final double? line_total;

  /// true = no price for this buyer context — show "price on request", never 0.
  final bool? on_request;

  /// Why there is no price: nothing prices it, a list marks it on-request, the tenant hides prices from anonymous buyers, or the item named neither product_id nor sku.
  final enums.PriceOnRequestReason? on_request_reason;

  /// The list that priced this item — null when nothing did. On an `on_request_entry` answer it is the list that said "ask us".
  final Map? price_list;

  /// Echo of the requested `product_id` — null when the item was identified by SKU.
  final String? product_id;

  /// The quantity this answer was computed for: what you sent, or 1 where you sent nothing or a non-positive value. It selects the tier and multiplies into `line_total`.
  final double? quantity;

  /// Echo of the requested `sku` — null when the item was identified by product id.
  final String? sku;

  /// Whether the stored amount is net or gross. THE fact a price cannot be without.
  final enums.PriceTaxBasis? tax_basis;

  /// Who decided it: the list's own tax_basis, a legacy tax_included=true on the list, or the tenant's tax_inclusive_default setting.
  final enums.PriceTaxBasisSource? tax_basis_source;

  /// The tax class code that produced `tax_rate`: the product’s own class where the products app knows one, otherwise the buyer market’s default class. The codes are the tenant’s, defined in `markets.tax_classes` — conventionally `standard` and `reduced`. null when tax could not be resolved.
  final String? tax_class;

  /// Whether unit_price already contains tax. Never null on a priced item — it is `tax_basis` as a boolean, kept for existing callers.
  final bool? tax_included;

  /// Tax rate as a PERCENTAGE (19 means 19 %, not 0.19), read from `markets.tax_classes` for this market and `tax_class`. null means UNKNOWN — a checkout must be able to tell that apart from a genuine 0 %.
  final double? tax_rate;

  /// The FULL quantity ladder the winning list holds for this item, ascending by `quantity_min` — what a PDP renders as a tier table. Empty on an on-request item.
  final List<PriceTier>? tiers;

  /// Price for ONE unit, in `currency` and on the basis `tax_basis` names — a decimal amount in major units (19.90 EUR), never minor units/cents. It is the stored rung exactly as a merchant typed it, unrounded. Do not display it without reading `tax_basis`; prefer `unit_price_net`/`unit_price_gross`, which are unambiguous.
  final double? unit_price;

  /// Unit price INCLUDING tax, in `currency`, rounded to `basis.price_precision` under `basis.rounding_mode`. Derived from `unit_price` and `tax_rate` in whichever direction `tax_basis` requires. Present only when `tax.resolved` is true.
  final double? unit_price_gross;

  /// Unit price EXCLUDING tax, in `currency`, rounded to `basis.price_precision` under `basis.rounding_mode`. Present only when `tax.resolved` is true — null means the rate is unknown, not that there is no tax.
  final double? unit_price_net;

  ResolvedPrice({
    this.currency,
    this.error,
    this.line_total,
    this.on_request,
    this.on_request_reason,
    this.price_list,
    this.product_id,
    this.quantity,
    this.sku,
    this.tax_basis,
    this.tax_basis_source,
    this.tax_class,
    this.tax_included,
    this.tax_rate,
    this.tiers,
    this.unit_price,
    this.unit_price_gross,
    this.unit_price_net,
  });

  factory ResolvedPrice.fromMap(Map<String, dynamic> map) {
    return ResolvedPrice(
      currency: map['currency']?.toString(),
      error: map['error']?.toString(),
      line_total: map['line_total']?.toDouble(),
      on_request: map['on_request'],
      on_request_reason: map['on_request_reason'] != null
          ? enums.PriceOnRequestReason.values
              .firstWhere((e) => e.value == map['on_request_reason'])
          : null,
      price_list: map['price_list'],
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      sku: map['sku']?.toString(),
      tax_basis: map['tax_basis'] != null
          ? enums.PriceTaxBasis.values
              .firstWhere((e) => e.value == map['tax_basis'])
          : null,
      tax_basis_source: map['tax_basis_source'] != null
          ? enums.PriceTaxBasisSource.values
              .firstWhere((e) => e.value == map['tax_basis_source'])
          : null,
      tax_class: map['tax_class']?.toString(),
      tax_included: map['tax_included'],
      tax_rate: map['tax_rate']?.toDouble(),
      tiers: map['tiers'] != null
          ? List<PriceTier>.from(map['tiers'].map((p) => PriceTier.fromMap(p)))
          : null,
      unit_price: map['unit_price']?.toDouble(),
      unit_price_gross: map['unit_price_gross']?.toDouble(),
      unit_price_net: map['unit_price_net']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "currency": currency,
      "error": error,
      "line_total": line_total,
      "on_request": on_request,
      "on_request_reason": on_request_reason?.value,
      "price_list": price_list,
      "product_id": product_id,
      "quantity": quantity,
      "sku": sku,
      "tax_basis": tax_basis?.value,
      "tax_basis_source": tax_basis_source?.value,
      "tax_class": tax_class,
      "tax_included": tax_included,
      "tax_rate": tax_rate,
      "tiers": tiers?.map((p) => p.toMap()).toList(),
      "unit_price": unit_price,
      "unit_price_gross": unit_price_gross,
      "unit_price_net": unit_price_net,
    };
  }
}
