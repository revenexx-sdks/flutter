part of '../../models.dart';

/// 
class ShippingMethod implements Model {
    /// 
    final String? carrier;

    /// 
    final String? code;

    /// 
    final Map? countries;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? description;

    /// 
    final bool? enabled;

    /// 
    final int? eta_days_max;

    /// 
    final int? eta_days_min;

    /// 
    final double? free_above;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final String? matrix_attribute;

    /// 
    final String? matrix_basis;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final double? price;

    /// 
    final String? pricing_type;

    /// 
    final String? tax_class;

    /// 
    final String? updated_at;

    ShippingMethod({
        this.carrier,
        this.code,
        this.countries,
        this.created_at,
        this.currency,
        this.description,
        this.enabled,
        this.eta_days_max,
        this.eta_days_min,
        this.free_above,
        this.id,
        this.labels,
        this.matrix_attribute,
        this.matrix_basis,
        this.metadata,
        this.name,
        this.position,
        this.price,
        this.pricing_type,
        this.tax_class,
        this.updated_at,
    });

    factory ShippingMethod.fromMap(Map<String, dynamic> map) {
        return ShippingMethod(
            carrier: map['carrier']?.toString(),
            code: map['code']?.toString(),
            countries: map['countries'],
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            enabled: map['enabled'],
            eta_days_max: map['eta_days_max'],
            eta_days_min: map['eta_days_min'],
            free_above: map['free_above']?.toDouble(),
            id: map['id']?.toString(),
            labels: map['labels'],
            matrix_attribute: map['matrix_attribute']?.toString(),
            matrix_basis: map['matrix_basis']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            price: map['price']?.toDouble(),
            pricing_type: map['pricing_type']?.toString(),
            tax_class: map['tax_class']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "carrier": carrier,
            "code": code,
            "countries": countries,
            "created_at": created_at,
            "currency": currency,
            "description": description,
            "enabled": enabled,
            "eta_days_max": eta_days_max,
            "eta_days_min": eta_days_min,
            "free_above": free_above,
            "id": id,
            "labels": labels,
            "matrix_attribute": matrix_attribute,
            "matrix_basis": matrix_basis,
            "metadata": metadata,
            "name": name,
            "position": position,
            "price": price,
            "pricing_type": pricing_type,
            "tax_class": tax_class,
            "updated_at": updated_at,
        };
    }
}
