part of '../../models.dart';

///
class IoProfile implements Model {
  /// What an import does with the lines the target cart already has. 'replace' clears them first; 'insert' and 'append' both add, and behave identically today. Read only by carts.import, and only when the call names a target_cart_id — an import that creates its own cart has nothing to apply a mode to.
  final enums.CartIoApplyMode? apply_mode;

  /// When the profile was created — for the bundled templates, when the app was installed.
  final String? created_at;

  /// Which way this profile runs. A profile only ever runs in the direction it declares: handing an import profile to carts.export is a 400, and the other way round.
  final enums.CartIoDirection? direction;

  /// What the profile carries: whole carts ('carts' — the `{cart, items}` document) or bare cart lines ('cart_items' — the spreadsheet a buyer quick-orders from).
  final enums.CartIoEntity? entity;

  /// The wire format. 'json' is the canonical, re-importable document; 'csv' is the spreadsheet form, and only line fields survive it.
  final enums.CartIoFormat? format;

  /// The profile, as carts.export and carts.import name it in `profile_id`.
  final String? id;

  /// One of the profiles this app ships with, seeded by carts.io.profiles.defaults. A profile a merchant wrote is not one, so this is how a UI separates "what came with the app" from "what we built".
  final bool? is_template;

  /// Baseline-IO-compatible column mapping. An empty object (or null) is identity: the full canonical shape, every field under its own name.
  final CartIoMapping? mapping;

  /// What a merchant picks this profile by. Unique within the tenant — reusing a name is a 409 — and the four bundled templates use it as their identity, so seeding is idempotent by name.
  final String? name;

  /// Free-form options carried with the profile. The four bundled templates put one human sentence under `description` and nothing else; no other key is read by this app, so anything a merchant needs alongside a profile can live here.
  final Map<String, dynamic>? options;

  /// The tenant this row belongs to, echoed by the data plane.
  final String? tenant_id;

  /// When the profile last changed.
  final String? updated_at;

  IoProfile({
    this.apply_mode,
    this.created_at,
    this.direction,
    this.entity,
    this.format,
    this.id,
    this.is_template,
    this.mapping,
    this.name,
    this.options,
    this.tenant_id,
    this.updated_at,
  });

  factory IoProfile.fromMap(Map<String, dynamic> map) {
    return IoProfile(
      apply_mode: map['apply_mode'] != null
          ? enums.CartIoApplyMode.values
              .firstWhere((e) => e.value == map['apply_mode'])
          : null,
      created_at: map['created_at']?.toString(),
      direction: map['direction'] != null
          ? enums.CartIoDirection.values
              .firstWhere((e) => e.value == map['direction'])
          : null,
      entity: map['entity'] != null
          ? enums.CartIoEntity.values
              .firstWhere((e) => e.value == map['entity'])
          : null,
      format: map['format'] != null
          ? enums.CartIoFormat.values
              .firstWhere((e) => e.value == map['format'])
          : null,
      id: map['id']?.toString(),
      is_template: map['is_template'],
      mapping:
          map['mapping'] != null ? CartIoMapping.fromMap(map['mapping']) : null,
      name: map['name']?.toString(),
      options: map['options'],
      tenant_id: map['tenant_id']?.toString(),
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "apply_mode": apply_mode?.value,
      "created_at": created_at,
      "direction": direction?.value,
      "entity": entity?.value,
      "format": format?.value,
      "id": id,
      "is_template": is_template,
      "mapping": mapping?.toMap(),
      "name": name,
      "options": options,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
    };
  }
}
