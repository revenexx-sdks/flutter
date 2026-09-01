part of '../../models.dart';

/// 
class RolePermissionsRequest implements Model {
    /// The complete new set. Duplicates and blanks are ignored; an empty array revokes everything.
    final List<String> permissions;

    RolePermissionsRequest({
        required this.permissions,
    });

    factory RolePermissionsRequest.fromMap(Map<String, dynamic> map) {
        return RolePermissionsRequest(
            permissions: List.from(map['permissions'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "permissions": permissions,
        };
    }
}
