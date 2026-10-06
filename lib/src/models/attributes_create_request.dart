part of '../../models.dart';

///
class AttributesCreateRequest implements Model {
  /// The attribute's stable identifier — the KEY its value is stored under inside `attribute_values`, and the name a category rule addresses as `attribute:<code>`. Unique per (`entity_type`, `entity_ref`) in this tenant.
  final String code;

  /// Type-specific settings; which keys apply depends on `type`. The ones this app reads: `units` (the unit list a measure attribute offers) and `reference_entity` (which entity a reference attribute draws its options from). The ones the cockpit edits alongside them: `unit`, `metric_family`, `decimals_allowed`, `asset_family`, `max_file_size`, `allowed_extensions`.
  final Map? config;

  /// Narrows `entity_type` to ONE reference entity or asset family, by its code — the attributes of `brand` rather than of every reference entity. Null for a plain product attribute.
  final String? entity_ref;

  /// Which kind of record carries this attribute: 'product' for the catalog itself, 'reference_entity', 'asset' or 'category' for the other things in this app that have attributes. Deliberately carries no CHECK — a tenant that models a fifth kind is served on it too.
  final String? entity_type;

  /// The `attribute_groups` row this attribute is filed under — the form section it appears in. Null is ungrouped, and an ungrouped field is rendered after every section that has a name.
  final String? group_id;

  /// Offer this attribute as a filter in a product list. `GET /products/grid` reports exactly these attributes in its `filters` array, and nothing else reads the flag.
  final bool? is_filterable;

  /// Declares that the value identifies the product — an EAN, a manufacturer part number. It is metadata a form and an importer read: no database index enforces it, because the value lives inside jsonb rather than in a column.
  final bool? is_unique;

  /// The field label a person sees, keyed by language tag. Resolution falls back to English and then to the code, so an untranslated attribute is still renderable.
  final Map? labels;

  /// True → the record holds ONE VALUE PER LOCALE, under `attribute_values.locale_specific.<locale>.<code>`. False → one value, under `attribute_values.common.<code>`. This flag is what decides where a write goes.
  final bool? localizable;

  /// Where the field sits inside its group. A family may override it for its own form through `family_attributes.position`; this is the attribute's default.
  final int? position;

  /// True → one value PER CHANNEL, under `attribute_values.channel_specific.<channel>.<code>`. Set together with `localizable` it means one value per channel AND locale, in `channel_locale_specific`.
  final bool? scopable;

  /// Which editor the value asks for — 'text', 'select', 'metric', 'price', 'asset_collection', 'reference_entity'. Carries no CHECK on purpose: an integrator adds a type, and `GET /products/attribute-schema` maps an unknown one onto a text field rather than refusing to answer.
  final String type;

  /// Show this attribute as a COLUMN in the product grid. `GET /products/grid` returns a column definition and a per-row value for exactly these.
  final bool? usable_in_grid;

  /// Limits a value has to satisfy, as a flat object. The seven keys a client can act on are `min`, `max`, `min_length`, `max_length`, `pattern`, `min_items`, `max_items` — `GET /products/attribute-schema` republishes those and leaves anything else the tenant stored untouched.
  final Map? validation;

  AttributesCreateRequest({
    required this.code,
    this.config,
    this.entity_ref,
    this.entity_type,
    this.group_id,
    this.is_filterable,
    this.is_unique,
    this.labels,
    this.localizable,
    this.position,
    this.scopable,
    required this.type,
    this.usable_in_grid,
    this.validation,
  });

  factory AttributesCreateRequest.fromMap(Map<String, dynamic> map) {
    return AttributesCreateRequest(
      code: map['code'].toString(),
      config: map['config'],
      entity_ref: map['entity_ref']?.toString(),
      entity_type: map['entity_type']?.toString(),
      group_id: map['group_id']?.toString(),
      is_filterable: map['is_filterable'],
      is_unique: map['is_unique'],
      labels: map['labels'],
      localizable: map['localizable'],
      position: map['position'],
      scopable: map['scopable'],
      type: map['type'].toString(),
      usable_in_grid: map['usable_in_grid'],
      validation: map['validation'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "config": config,
      "entity_ref": entity_ref,
      "entity_type": entity_type,
      "group_id": group_id,
      "is_filterable": is_filterable,
      "is_unique": is_unique,
      "labels": labels,
      "localizable": localizable,
      "position": position,
      "scopable": scopable,
      "type": type,
      "usable_in_grid": usable_in_grid,
      "validation": validation,
    };
  }
}
