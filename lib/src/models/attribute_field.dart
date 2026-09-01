part of '../../models.dart';

/// One renderable field. A superset of the manifest's `Field`: the three additions (`localized`, `channel_scoped`, `storage`) carry what a static manifest never has to say, because a manifest's fields are columns and these are keys inside one.
class AttributeField implements Model {
    /// One value per channel rather than one value.
    final bool? channel_scoped;

    /// Dotted read paths, most specific first — the documented precedence (channel+locale → locale → channel → common). `common` is always last and always present, because early imports wrote there whatever the attribute's flags say.
    final List<String>? from;

    /// Attribute-group code — the section this field belongs in.
    final String? group;

    /// That section's heading, resolved for the requested locale — so a form can be built without reading `attribute_groups` as well.
    final String? group_label;

    /// Resolved for the requested locale, falling back to English, then to the code.
    final String? label;

    /// One value per locale rather than one value.
    final bool? localized;

    /// The attribute code — the key the value is stored under.
    final String? name;

    /// Present on select / multi-select. Two sources, one shape: rows of `attribute_options` for an enumeration the attribute owns, or the records of a reference entity for an attribute that points at one. Empty is an answer: the list has no members yet.
    final List<AttributeFieldOption>? options;

    /// The family's ordering of this attribute, falling back to the attribute's own.
    final int? position;

    /// The field must not be edited in this context. Today the one cause is a variant axis on a product model; `readonly_reason` says which.
    final bool? readonly;

    /// Why the field is locked — a variant axis on a product model is set on its variants.
    final String? readonly_reason;

    /// Present when the options ARE a reference entity's records: the code of that entity, so a client can offer to manage the values rather than only pick from them.
    final String? reference_entity;

    /// The family's `is_required`, narrowed to the requested channel when `required_channels` names any.
    final bool? xrequired;

    /// Where the value lives. Absent on an app whose custom fields are plain columns — then the field name IS the column.
    final AttributeFieldStorage? storage;

    /// The control to draw. Mapped from `attributes.type`, which carries no CHECK on purpose — an unknown type answers 'text' rather than nothing.
    final String? type;

    /// The attribute's `is_unique` — the value is meant to identify the product. Advisory: no index enforces it, so a client that cares has to check.
    final bool? unique;

    /// Offered units of a `measure` field, from the attribute's `config.units`.
    final List<String>? units;

    /// The limits the value has to satisfy, ready to hand to a form validator. Only the seven keys below are republished; anything else the tenant stored in `attributes.validation` stays there.
    final AttributeFieldValidation? validation;

    AttributeField({
        this.channel_scoped,
        this.from,
        this.group,
        this.group_label,
        this.label,
        this.localized,
        this.name,
        this.options,
        this.position,
        this.readonly,
        this.readonly_reason,
        this.reference_entity,
        this.xrequired,
        this.storage,
        this.type,
        this.unique,
        this.units,
        this.validation,
    });

    factory AttributeField.fromMap(Map<String, dynamic> map) {
        return AttributeField(
            channel_scoped: map['channel_scoped'],
            from: List.from(map['from'] ?? []),
            group: map['group']?.toString(),
            group_label: map['group_label']?.toString(),
            label: map['label']?.toString(),
            localized: map['localized'],
            name: map['name']?.toString(),
            options: map['options'] != null ? List<AttributeFieldOption>.from(map['options'].map((p) => AttributeFieldOption.fromMap(p))) : null,
            position: map['position'],
            readonly: map['readonly'],
            readonly_reason: map['readonly_reason']?.toString(),
            reference_entity: map['reference_entity']?.toString(),
            xrequired: map['required'],
            storage: map['storage'] != null ? AttributeFieldStorage.fromMap(map['storage']) : null,
            type: map['type']?.toString(),
            unique: map['unique'],
            units: List.from(map['units'] ?? []),
            validation: map['validation'] != null ? AttributeFieldValidation.fromMap(map['validation']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_scoped": channel_scoped,
            "from": from,
            "group": group,
            "group_label": group_label,
            "label": label,
            "localized": localized,
            "name": name,
            "options": options?.map((p) => p.toMap()).toList(),
            "position": position,
            "readonly": readonly,
            "readonly_reason": readonly_reason,
            "reference_entity": reference_entity,
            "required": xrequired,
            "storage": storage?.toMap(),
            "type": type,
            "unique": unique,
            "units": units,
            "validation": validation?.toMap(),
        };
    }
}
