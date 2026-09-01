part of '../../models.dart';

/// 
class FamiliesCreateRequest implements Model {
    /// The family's stable identifier — which set of attributes a product of this family HAS. Unique per tenant, and the value `GET /products/attribute-schema?family_code=` resolves.
    final String code;

    /// Which attribute code carries the product's main image — the one a grid thumbnail and a picker read.
    final String? image_attribute;

    /// Which attribute CODE carries the display name of a product in this family. A product's name is an attribute, not a column, and which attribute it is, is per family. Null falls back to the `default_label_attribute` setting and then to the conventional `name`.
    final String? label_attribute;

    /// What the family is called, per language tag — the name an operator picks from, while the code is what everything else joins on.
    final Map? labels;

    FamiliesCreateRequest({
        required this.code,
        this.image_attribute,
        this.label_attribute,
        this.labels,
    });

    factory FamiliesCreateRequest.fromMap(Map<String, dynamic> map) {
        return FamiliesCreateRequest(
            code: map['code'].toString(),
            image_attribute: map['image_attribute']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "image_attribute": image_attribute,
            "label_attribute": label_attribute,
            "labels": labels,
        };
    }
}
