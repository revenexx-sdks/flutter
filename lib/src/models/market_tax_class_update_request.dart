part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MarketTaxClassUpdateRequest implements Model {
    /// Tax class code, unique per market — the rate bucket a product or a shipping method is assigned to ('standard', 'reduced', 'zero'). Other apps name a class by THIS and by nothing else: there is no foreign key behind it and there cannot be (ADR-0055), which is why the delete route asks the shipping app what still points at the code before removing it.
    final String? code;

    /// The class applied to a line that names none. At most one per market. A market that stores GROSS prices and marks no default cannot break those prices back down into net, which is why readiness turns that combination from a warning into a blocking failure.
    final bool? is_default;

    /// Localized display names for storefronts and invoices, keyed by locale: a flat {locale: label} map, one level deep, string values. The key to write is the `locale_policy.write` from GET /markets/{id}/context, exactly as for a market's labels. Null means nothing is translated and `name` is all there is.
    final Map? labels;

    /// Display name of the rate bucket, in the operator's own language.
    final String? name;

    /// Sort position among this market's tax classes, ascending, default 0 — and the tie-break that picks a class when none is flagged default.
    final int? position;

    /// Tax rate in PERCENT, 0–100 (default 0) — 20 means 20 %, not 0.2. Whether a stored price already contains it is a separate question, answered per market by `pricing.tax_basis` on the context.
    final double? rate;

    MarketTaxClassUpdateRequest({
        this.code,
        this.is_default,
        this.labels,
        this.name,
        this.position,
        this.rate,
    });

    factory MarketTaxClassUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MarketTaxClassUpdateRequest(
            code: map['code']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            rate: map['rate']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "rate": rate,
        };
    }
}
