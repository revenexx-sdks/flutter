part of '../../models.dart';

/// 
class ProductGridRow implements Model {
    /// The grid cells: one key per attribute code that `columns` lists with `source: "attribute"`, holding the value already resolved out of `attribute_values` for the requested context. A code the product carries no value for is null rather than absent, so a row is the same shape whatever it holds. The keys are the tenant's own attribute codes, which is why this object has no fixed properties — read `columns` for the set.
    final Map<String, dynamic>? attributes;

    /// The stored `products.completeness` document, verbatim. Null means it has never been computed — not that the product is empty.
    final Map? completeness;

    /// Whether the product is offered.
    final bool? enabled;

    /// That family's code, resolved here so a grid can show and group by it without a second read.
    final String? family_code;

    /// The product's family. Null is the state that makes completeness impossible.
    final String? family_id;

    /// The product's id — what a row click navigates with.
    final String? id;

    /// 'simple', 'model' or 'variant' — a model is a row a person should not price or sell.
    final String? kind;

    /// The resolved display name. Never empty; read `label_source` before showing it as a name.
    final String? label;

    /// Which attribute code the name was read from, per this product's family.
    final String? label_attribute;

    /// Which bucket of attribute_values the name came from. 'sku' means the catalog holds no name for this product — show that as a missing name, not as a name.
    final enums.ProductLabelSource? label_source;

    /// The merchant's article number.
    final String? sku;

    /// When the product row was last written — the column a "recently changed" sort uses.
    final String? updated_at;

    ProductGridRow({
        this.attributes,
        this.completeness,
        this.enabled,
        this.family_code,
        this.family_id,
        this.id,
        this.kind,
        this.label,
        this.label_attribute,
        this.label_source,
        this.sku,
        this.updated_at,
    });

    factory ProductGridRow.fromMap(Map<String, dynamic> map) {
        return ProductGridRow(
            attributes: map['attributes'],
            completeness: map['completeness'],
            enabled: map['enabled'],
            family_code: map['family_code']?.toString(),
            family_id: map['family_id']?.toString(),
            id: map['id']?.toString(),
            kind: map['kind']?.toString(),
            label: map['label']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
            label_source: map['label_source'] != null ? enums.ProductLabelSource.values.firstWhere((e) => e.value == map['label_source']) : null,
            sku: map['sku']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attributes": attributes,
            "completeness": completeness,
            "enabled": enabled,
            "family_code": family_code,
            "family_id": family_id,
            "id": id,
            "kind": kind,
            "label": label,
            "label_attribute": label_attribute,
            "label_source": label_source?.value,
            "sku": sku,
            "updated_at": updated_at,
        };
    }
}
