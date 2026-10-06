part of '../../models.dart';

/// A saved profile. Mirrors the controller's presenter exactly — there
/// are no `created_at` / `updated_at` fields on this resource.
///
class IoProfileResource implements Model {
  ///
  final String? app;

  ///
  final enums.IoProfileResourceApplyMode? apply_mode;

  ///
  final String? created_by;

  ///
  final enums.IoProfileResourceDirection? direction;

  ///
  final String? entity;

  ///
  final IoProfileFormat? format;

  ///
  final String? id;

  ///
  final Map<String, dynamic>? mapping;

  /// `null` means global — offered for every market.
  final List<String>? markets;

  ///
  final String? name;

  ///
  final Map<String, dynamic>? options;

  ///
  final String? vendor;

  IoProfileResource({
    this.app,
    this.apply_mode,
    this.created_by,
    this.direction,
    this.entity,
    this.format,
    this.id,
    this.mapping,
    this.markets,
    this.name,
    this.options,
    this.vendor,
  });

  factory IoProfileResource.fromMap(Map<String, dynamic> map) {
    return IoProfileResource(
      app: map['app']?.toString(),
      apply_mode: map['apply_mode'] != null
          ? enums.IoProfileResourceApplyMode.values
              .firstWhere((e) => e.value == map['apply_mode'])
          : null,
      created_by: map['created_by']?.toString(),
      direction: map['direction'] != null
          ? enums.IoProfileResourceDirection.values
              .firstWhere((e) => e.value == map['direction'])
          : null,
      entity: map['entity']?.toString(),
      format:
          map['format'] != null ? IoProfileFormat.fromMap(map['format']) : null,
      id: map['id']?.toString(),
      mapping: map['mapping'],
      markets: List.from(map['markets'] ?? []),
      name: map['name']?.toString(),
      options: map['options'],
      vendor: map['vendor']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app,
      "apply_mode": apply_mode?.value,
      "created_by": created_by,
      "direction": direction?.value,
      "entity": entity,
      "format": format?.toMap(),
      "id": id,
      "mapping": mapping,
      "markets": markets,
      "name": name,
      "options": options,
      "vendor": vendor,
    };
  }
}
