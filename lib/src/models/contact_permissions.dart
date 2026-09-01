part of '../../models.dart';

/// A contact's effective grants, derived from its role on every read — nothing here is stored, so a role change can never leave a stale grant behind. Carried here so a BFF does not need a second call to decide what to render.
class ContactPermissions implements Model {
    /// False while the contact is blocked or its registration is still pending/rejected — it holds the role but must not act on it.
    final bool? active;

    /// The person these grants belong to. Null when the answer describes nobody — a user with no contact mirrored against it.
    final String? contact_id;

    /// Amount ceiling in the market's currency; null means no ceiling. Only meaningful together with the 'orders.approve' permission.
    final double? order_approval_limit;

    /// The organization the role applies inside. Null for a standalone (B2C) contact — a role with no company to hold it in.
    final String? organization_id;

    /// What this role may do. Derived from the role — see GET /customers/roles.
    final List<String>? permissions;

    /// The role this contact holds in its organization, and the only input to `permissions`.
    final String? role;

    ContactPermissions({
        this.active,
        this.contact_id,
        this.order_approval_limit,
        this.organization_id,
        this.permissions,
        this.role,
    });

    factory ContactPermissions.fromMap(Map<String, dynamic> map) {
        return ContactPermissions(
            active: map['active'],
            contact_id: map['contact_id']?.toString(),
            order_approval_limit: map['order_approval_limit']?.toDouble(),
            organization_id: map['organization_id']?.toString(),
            permissions: List.from(map['permissions'] ?? []),
            role: map['role']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "active": active,
            "contact_id": contact_id,
            "order_approval_limit": order_approval_limit,
            "organization_id": organization_id,
            "permissions": permissions,
            "role": role,
        };
    }
}
