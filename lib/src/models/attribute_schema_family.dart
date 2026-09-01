part of '../../models.dart';

/// The family the fields belong to, or null when none was named — then the answer is every attribute of the `entity_type`, which is what a reference entity or an asset family has instead of a family.
class AttributeSchemaFamily implements Model {
    /// The family's code — the value `?family_code=` takes.
    final String? code;

    /// The family's id.
    final String? id;

    /// The family name, resolved for the requested locale.
    final String? label;

    /// Which of these fields is the product's display name.
    final String? label_attribute;

    AttributeSchemaFamily({
        this.code,
        this.id,
        this.label,
        this.label_attribute,
    });

    factory AttributeSchemaFamily.fromMap(Map<String, dynamic> map) {
        return AttributeSchemaFamily(
            code: map['code']?.toString(),
            id: map['id']?.toString(),
            label: map['label']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "id": id,
            "label": label,
            "label_attribute": label_attribute,
        };
    }
}
