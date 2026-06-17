part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ProductsUpdateRequest implements Model {
    /// 
    final Map? attribute_values;

    /// 
    final Map? completeness;

    /// 
    final String? deleted_at;

    /// 
    final bool? enabled;

    /// 
    final String? family_id;

    /// 
    final String? family_variant_id;

    /// 
    final String? kind;

    /// 
    final String? parent_id;

    /// 
    final Map? quantified_associations;

    /// 
    final String? sku;

    /// 
    final String? tax_class;

    ProductsUpdateRequest({
        this.attribute_values,
        this.completeness,
        this.deleted_at,
        this.enabled,
        this.family_id,
        this.family_variant_id,
        this.kind,
        this.parent_id,
        this.quantified_associations,
        this.sku,
        this.tax_class,
    });

    factory ProductsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ProductsUpdateRequest(
            attribute_values: map['attribute_values'],
            completeness: map['completeness'],
            deleted_at: map['deleted_at']?.toString(),
            enabled: map['enabled'],
            family_id: map['family_id']?.toString(),
            family_variant_id: map['family_variant_id']?.toString(),
            kind: map['kind']?.toString(),
            parent_id: map['parent_id']?.toString(),
            quantified_associations: map['quantified_associations'],
            sku: map['sku']?.toString(),
            tax_class: map['tax_class']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_values": attribute_values,
            "completeness": completeness,
            "deleted_at": deleted_at,
            "enabled": enabled,
            "family_id": family_id,
            "family_variant_id": family_variant_id,
            "kind": kind,
            "parent_id": parent_id,
            "quantified_associations": quantified_associations,
            "sku": sku,
            "tax_class": tax_class,
        };
    }
}
