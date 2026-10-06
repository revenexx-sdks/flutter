part of '../../models.dart';

///
class IoProfileCreateRequest implements Model {
  /// What an import does with the lines the target cart already has: 'replace' clears them first, 'insert' and 'append' both add and behave identically today. Read only when the import names a target_cart_id. Default 'insert'.
  final enums.CartIoApplyMode? apply_mode;

  /// Which way this profile runs. A profile only ever runs in the direction it declares: handing an import profile to carts.export is a 400, and the other way round.
  final enums.CartIoDirection direction;

  /// What the profile carries: whole carts (the `{cart, items}` document) or bare cart lines. Default 'carts'.
  final enums.CartIoEntity? entity;

  /// The wire format. 'json' is the canonical, re-importable document; 'csv' is the spreadsheet form, and only line fields survive it. Default 'json'.
  final enums.CartIoFormat? format;

  /// One of the bundled templates. Set by carts.io.profiles.defaults; a profile a merchant writes is not one.
  final bool? is_template;

  /// Baseline-IO-compatible column mapping. An empty object (or null) is identity: the full canonical shape, every field under its own name.
  final CartIoMapping? mapping;

  /// What a merchant picks this profile by. Unique within the tenant — reusing a name is a 409.
  final String name;

  /// Free-form options carried with the profile. The four bundled templates put one human sentence under `description` and nothing else; no other key is read by this app, so anything a merchant needs alongside a profile can live here.
  final Map<String, dynamic>? options;

  IoProfileCreateRequest({
    this.apply_mode,
    required this.direction,
    this.entity,
    this.format,
    this.is_template,
    this.mapping,
    required this.name,
    this.options,
  });

  factory IoProfileCreateRequest.fromMap(Map<String, dynamic> map) {
    return IoProfileCreateRequest(
      apply_mode: map['apply_mode'] != null
          ? enums.CartIoApplyMode.values
              .firstWhere((e) => e.value == map['apply_mode'])
          : null,
      direction: enums.CartIoDirection.values
          .firstWhere((e) => e.value == map['direction']),
      entity: map['entity'] != null
          ? enums.CartIoEntity.values
              .firstWhere((e) => e.value == map['entity'])
          : null,
      format: map['format'] != null
          ? enums.CartIoFormat.values
              .firstWhere((e) => e.value == map['format'])
          : null,
      is_template: map['is_template'],
      mapping:
          map['mapping'] != null ? CartIoMapping.fromMap(map['mapping']) : null,
      name: map['name'].toString(),
      options: map['options'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "apply_mode": apply_mode?.value,
      "direction": direction.value,
      "entity": entity?.value,
      "format": format?.value,
      "is_template": is_template,
      "mapping": mapping?.toMap(),
      "name": name,
      "options": options,
    };
  }
}
