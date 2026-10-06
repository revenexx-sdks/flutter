part of '../../models.dart';

///
class RoleCatalogResponse implements Model {
  /// The built-in permission vocabulary, one entry per grant. The authoritative, installed-app-aware list is the platform's permission ledger — this app deliberately does not duplicate it.
  final List<Map>? permissions;

  /// Every role a contact of this tenant can hold, least to most privileged.
  final List<Map>? roles;

  /// 'tenant' — the configured mapping answered. 'defaults' — this tenant has no roles yet, or custom_roles_enabled locks the ledger, and the built-ins answered.
  final enums.RoleCatalogResponseSource? source;

  RoleCatalogResponse({
    this.permissions,
    this.roles,
    this.source,
  });

  factory RoleCatalogResponse.fromMap(Map<String, dynamic> map) {
    return RoleCatalogResponse(
      permissions: List.from(map['permissions'] ?? []),
      roles: List.from(map['roles'] ?? []),
      source: map['source'] != null
          ? enums.RoleCatalogResponseSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "permissions": permissions,
      "roles": roles,
      "source": source?.value,
    };
  }
}
