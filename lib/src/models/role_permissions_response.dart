part of '../../models.dart';

///
class RolePermissionsResponse implements Model {
  /// The role that was written.
  final String? key;

  /// Its complete new set, after de-duplication.
  final List<String>? permissions;

  RolePermissionsResponse({
    this.key,
    this.permissions,
  });

  factory RolePermissionsResponse.fromMap(Map<String, dynamic> map) {
    return RolePermissionsResponse(
      key: map['key']?.toString(),
      permissions: List.from(map['permissions'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "permissions": permissions,
    };
  }
}
