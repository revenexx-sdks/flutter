part of '../../models.dart';

/// 
class ShippingRate implements Model {
    /// 
    final String? carrier;

    /// 
    final String? code;

    /// 
    final String? currency;

    /// 
    final String? description;

    /// 
    final int? eta_days_max;

    /// 
    final int? eta_days_min;

    /// 
    final String? free_reason;

    /// 
    final Map? labels;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final double? price;

    /// 
    final String? pricing_type;

    /// Shipping method tax class (or market default).
    final String? tax_class;

    /// Tax rate % from markets.tax_classes for this market + tax_class.
    final double? tax_rate;

    ShippingRate({
        this.carrier,
        this.code,
        this.currency,
        this.description,
        this.eta_days_max,
        this.eta_days_min,
        this.free_reason,
        this.labels,
        this.name,
        this.position,
        this.price,
        this.pricing_type,
        this.tax_class,
        this.tax_rate,
    });

    factory ShippingRate.fromMap(Map<String, dynamic> map) {
        return ShippingRate(
            carrier: map['carrier']?.toString(),
            code: map['code']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            eta_days_max: map['eta_days_max'],
            eta_days_min: map['eta_days_min'],
            free_reason: map['free_reason']?.toString(),
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            price: map['price']?.toDouble(),
            pricing_type: map['pricing_type']?.toString(),
            tax_class: map['tax_class']?.toString(),
            tax_rate: map['tax_rate']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "code": code,
            "currency": currency,
            "description": description,
            "eta_days_max": eta_days_max,
            "eta_days_min": eta_days_min,
            "free_reason": free_reason,
            "labels": labels,
            "name": name,
            "position": position,
            "price": price,
            "pricing_type": pricing_type,
            "tax_class": tax_class,
            "tax_rate": tax_rate,
        };
    }
}
