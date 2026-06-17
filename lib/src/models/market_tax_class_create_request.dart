part of '../../models.dart';

/// The owning market comes from the route path (&#039;market_id&#039;).
class MarketTaxClassCreateRequest implements Model {
    /// Tax class code (unique per market).
    final String code;

    /// 
    final bool? is_default;

    /// Localized display names ({locale: label}).
    final Map? labels;

    /// 
    final String name;

    /// Sort position (default 0).
    final int? position;

    /// Tax rate in percent, 0–100 (default 0).
    final double? rate;

    MarketTaxClassCreateRequest({
        required this.code,
        this.is_default,
        this.labels,
        required this.name,
        this.position,
        this.rate,
    });

    factory MarketTaxClassCreateRequest.fromMap(Map<String, dynamic> map) {
        return MarketTaxClassCreateRequest(
            code: map['code'].toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name'].toString(),
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
