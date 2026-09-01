part of '../../models.dart';

/// 
class AuthMagicLinkConfirmResponse implements Model {
    /// The customer record behind the login. Null when no contact is mirrored against the platform user yet — a sign-in link creates the account, not the customer.
    final Contact? contact;

    /// A contact's effective grants, derived from its role on every read — nothing here is stored, so a role change can never leave a stale grant behind. Null when there is no contact to derive them from.
    final ContactPermissions? permissions;

    /// Platform auth session. Treat `secret` as a credential — the trusted BFF stores it server-side (HTTP-only cookie), never in the browser.
    final AuthSession? session;

    AuthMagicLinkConfirmResponse({
        this.contact,
        this.permissions,
        this.session,
    });

    factory AuthMagicLinkConfirmResponse.fromMap(Map<String, dynamic> map) {
        return AuthMagicLinkConfirmResponse(
            contact: map['contact'] != null ? Contact.fromMap(map['contact']) : null,
            permissions: map['permissions'] != null ? ContactPermissions.fromMap(map['permissions']) : null,
            session: map['session'] != null ? AuthSession.fromMap(map['session']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact": contact?.toMap(),
            "permissions": permissions?.toMap(),
            "session": session?.toMap(),
        };
    }
}
