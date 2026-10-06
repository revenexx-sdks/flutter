part of '../../models.dart';

///
class AuthMeResponse implements Model {
  /// The customer record mirrored against this user, or null. A user with no contact resolves perfectly well — that is not the 404.
  final Contact? contact;

  /// A contact's effective grants, derived from its role on every read — nothing here is stored, so a role change can never leave a stale grant behind. Null when there is no contact to derive them from.
  final ContactPermissions? permissions;

  /// The platform identity record, forwarded verbatim from the identity service. This app neither reshapes nor validates it, so treat unknown fields as forward-compatible; the ones named here are the ones this app itself writes and reads.
  final Map<String, dynamic>? user;

  AuthMeResponse({
    this.contact,
    this.permissions,
    this.user,
  });

  factory AuthMeResponse.fromMap(Map<String, dynamic> map) {
    return AuthMeResponse(
      contact: map['contact'] != null ? Contact.fromMap(map['contact']) : null,
      permissions: map['permissions'] != null
          ? ContactPermissions.fromMap(map['permissions'])
          : null,
      user: map['user'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "contact": contact?.toMap(),
      "permissions": permissions?.toMap(),
      "user": user,
    };
  }
}
