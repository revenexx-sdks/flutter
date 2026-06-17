part of '../../models.dart';

/// 
class Products implements Model {
    /// 
    final Map? attribute_values;

    /// 
    final Map? completeness;

    /// 
    final String? created_at;

    /// 
    final String? deleted_at;

    /// 
    final bool? enabled;

    /// 
    final String? family_id;

    /// 
    final String? family_variant_id;

    /// 
    final String? id;

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

    /// 
    final String? updated_at;

    Products({
        this.attribute_values,
        this.completeness,
        this.created_at,
        this.deleted_at,
        this.enabled,
        this.family_id,
        this.family_variant_id,
        this.id,
        this.kind,
        this.parent_id,
        this.quantified_associations,
        this.sku,
        this.tax_class,
        this.updated_at,
    });

    factory Products.fromMap(Map<String, dynamic> map) {
        return Products(
            attribute_values: map['attribute_values'],
            completeness: map['completeness'],
            created_at: map['created_at']?.toString(),
            deleted_at: map['deleted_at']?.toString(),
            enabled: map['enabled'],
            family_id: map['family_id']?.toString(),
            family_variant_id: map['family_variant_id']?.toString(),
            id: map['id']?.toString(),
            kind: map['kind']?.toString(),
            parent_id: map['parent_id']?.toString(),
            quantified_associations: map['quantified_associations'],
            sku: map['sku']?.toString(),
            tax_class: map['tax_class']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_values": attribute_values,
            "completeness": completeness,
            "created_at": created_at,
            "deleted_at": deleted_at,
            "enabled": enabled,
            "family_id": family_id,
            "family_variant_id": family_variant_id,
            "id": id,
            "kind": kind,
            "parent_id": parent_id,
            "quantified_associations": quantified_associations,
            "sku": sku,
            "tax_class": tax_class,
            "updated_at": updated_at,
        };
    }
}
