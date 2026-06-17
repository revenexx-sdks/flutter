part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MarketUpdateRequest implements Model {
    /// Market code (unique per tenant).
    final String? code;

    /// ISO 4217 code (default &#039;EUR&#039;).
    final String? currency;

    /// 
    final bool? is_default;

    /// Localized display names ({locale: label}).
    final Map? labels;

    /// 
    final String? name;

    /// Sort position (default 0).
    final int? position;

    /// Default &#039;active&#039;.
    final enums.MarketStatus? status;

    MarketUpdateRequest({
        this.code,
        this.currency,
        this.is_default,
        this.labels,
        this.name,
        this.position,
        this.status,
    });

    factory MarketUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MarketUpdateRequest(
            code: map['code']?.toString(),
            currency: map['currency']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            status: map['status'] != null ? enums.MarketStatus.values.firstWhere((e) => e.value == map['status']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "currency": currency,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status?.value,
        };
    }
}
