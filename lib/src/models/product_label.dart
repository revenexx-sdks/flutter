part of '../../models.dart';

/// 
class ProductLabel implements Model {
    /// The attribute code the name was read from.
    final String? attribute;

    /// How that attribute was chosen: 'family' is the product's own `families.label_attribute`, 'setting' the tenant's `default_label_attribute`, 'convention' the built-in fallback to `name` when neither says anything.
    final enums.ProductLabelAttributeSource? attribute_from;

    /// The product's id.
    final String? id;

    /// The name to show. Never empty — read `source` before treating it as a name, because `sku` there means this is the SKU standing in for one.
    final String? label;

    /// Which locale the value came out of, when it came from a locale bucket. Null for a value in `common` and for the SKU fallback.
    final String? locale;

    /// The SKU, which is also the fallback shown as `label` when the catalog holds no name.
    final String? sku;

    /// Which bucket of attribute_values the name came from. 'sku' means the catalog holds no name for this product — show that as a missing name, not as a name.
    final enums.ProductLabelSource? source;

    ProductLabel({
        this.attribute,
        this.attribute_from,
        this.id,
        this.label,
        this.locale,
        this.sku,
        this.source,
    });

    factory ProductLabel.fromMap(Map<String, dynamic> map) {
        return ProductLabel(
            attribute: map['attribute']?.toString(),
            attribute_from: map['attribute_from'] != null ? enums.ProductLabelAttributeSource.values.firstWhere((e) => e.value == map['attribute_from']) : null,
            id: map['id']?.toString(),
            label: map['label']?.toString(),
            locale: map['locale']?.toString(),
            sku: map['sku']?.toString(),
            source: map['source'] != null ? enums.ProductLabelSource.values.firstWhere((e) => e.value == map['source']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute": attribute,
            "attribute_from": attribute_from?.value,
            "id": id,
            "label": label,
            "locale": locale,
            "sku": sku,
            "source": source?.value,
        };
    }
}
