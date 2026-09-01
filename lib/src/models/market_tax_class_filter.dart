part of '../../models.dart';

/// The exact-column filters this call applied, echoed back. Every value is the raw query string, never the column's own type: `?is_default=true` comes back as `"true"`. A `?column=value` naming a column this entity does not have is DROPPED rather than refused — the call answers 200 with the unfiltered list, and the key missing from here is the only way to find out.
class MarketTaxClassFilter implements Model {
  /// The `code` filter as it arrived, verbatim. Present only when the call sent it.
  final String? code;

  /// The `created_at` filter as it arrived, verbatim. Present only when the call sent it. Any form the database accepts as a timestamp, including a bare date.
  final String? created_at;

  /// The `id` filter as it arrived, verbatim. Present only when the call sent it.
  final String? id;

  /// The `is_default` filter as it arrived, verbatim. Present only when the call sent it.
  final String? is_default;

  /// The `labels` filter as it arrived, verbatim. Present only when the call sent it.
  final String? labels;

  /// The owning market, taken from the route path. ALWAYS present, and always the path's market — a `?market_id=` in the query is overwritten by it rather than honoured, so this is never the value a caller sent.
  final String? market_id;

  /// The `name` filter as it arrived, verbatim. Present only when the call sent it.
  final String? name;

  /// The `position` filter as it arrived, verbatim. Present only when the call sent it.
  final String? position;

  /// The `rate` filter as it arrived, verbatim. Present only when the call sent it.
  final String? rate;

  /// The `updated_at` filter as it arrived, verbatim. Present only when the call sent it. Any form the database accepts as a timestamp, including a bare date.
  final String? updated_at;

  MarketTaxClassFilter({
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

  factory MarketTaxClassFilter.fromMap(Map<String, dynamic> map) {
    return MarketTaxClassFilter(
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      is_default: map['is_default']?.toString(),
      labels: map['labels']?.toString(),
      market_id: map['market_id']?.toString(),
      name: map['name']?.toString(),
      position: map['position']?.toString(),
      rate: map['rate']?.toString(),
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
