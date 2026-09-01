part of '../../models.dart';

/// One rate bucket within a market — 'standard', 'reduced', 'zero' — and the source of record for that rate across the platform. Other apps point at it by CODE, with no foreign key behind it.
class MarketTaxClass implements Model {
  /// Tax class code, unique per market — the rate bucket a product or a shipping method is assigned to ('standard', 'reduced', 'zero'). Other apps name a class by THIS and by nothing else: there is no foreign key behind it and there cannot be (ADR-0055), which is why the delete route asks the shipping app what still points at the code before removing it.
  final String? code;

  /// When the tax class was created on this market. Set by the database; never writable.
  final String? created_at;

  /// Primary key of this tax class. The class is named by `code` everywhere else, including by other apps.
  final String? id;

  /// The class applied to a line that names none. At most one per market. A market that stores GROSS prices and marks no default cannot break those prices back down into net, which is why readiness turns that combination from a warning into a blocking failure.
  final bool? is_default;

  /// Localized display names for storefronts and invoices, keyed by locale: a flat {locale: label} map, one level deep, string values. The key to write is the `locale_policy.write` from GET /markets/{id}/context, exactly as for a market's labels. Null means nothing is translated and `name` is all there is.
  final Map<String, dynamic>? labels;

  /// The market this tax class belongs to. Filled from the route path on write and never read out of the body; ON DELETE CASCADE, so deleting the market deletes this row.
  final String? market_id;

  /// Display name of the rate bucket, in the operator's own language.
  final String? name;

  /// Sort position among this market's tax classes, ascending, default 0 — and the tie-break that picks a class when none is flagged default.
  final int? position;

  /// Tax rate in PERCENT, 0–100 (default 0) — 20 means 20 %, not 0.2. Whether a stored price already contains it is a separate question, answered per market by `pricing.tax_basis` on the context.
  final double? rate;

  /// When the tax class was last written. Set by the database on every update; never writable.
  final String? updated_at;

  MarketTaxClass({
    this.code,
    this.created_at,
    this.id,
    this.is_default,
    this.labels,
    this.market_id,
    this.name,
    this.position,
    this.rate,
    this.updated_at,
  });

  factory MarketTaxClass.fromMap(Map<String, dynamic> map) {
    return MarketTaxClass(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      is_default: map['is_default'],
      labels: map['labels'],
      market_id: map['market_id']?.toString(),
      name: map['name']?.toString(),
      position: map['position'],
      rate: map['rate']?.toDouble(),
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "created_at": created_at,
      "id": id,
      "is_default": is_default,
      "labels": labels,
      "market_id": market_id,
      "name": name,
      "position": position,
      "rate": rate,
      "updated_at": updated_at,
    };
  }
}
