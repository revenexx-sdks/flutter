part of '../../models.dart';

///
class AuthLoginResponse implements Model {
  /// The challenge to answer, when one was required. Send it back as `challenge_id`.
  final String? challenge_id;

  /// The customer record behind the login. Null when a platform user has no contact mirrored against it — a storefront should treat that as "signed in, but not a customer of this app".
  final Contact? contact;

  /// Present and true when the tenant's `mfa_mode` is 'required'. The password was one of two things this buyer has to prove: a challenge has already been created and mailed, and the session above must NOT be treated as signed in until `PUT /customers/auth/mfa/challenge` confirms the code. The session travels anyway because answering needs it — the expected caller holds session material server-side, and this is the point at which that trust is used.
  final bool? mfa_required;

  /// A contact's effective grants, derived from its role on every read — nothing here is stored, so a role change can never leave a stale grant behind. Carried here so a BFF does not need a second call to decide what to render.
  final ContactPermissions? permissions;

  /// Platform auth session. Treat `secret` as a credential — the trusted BFF stores it server-side (HTTP-only cookie), never in the browser.
  final AuthSession? session;

  AuthLoginResponse({
    this.challenge_id,
    this.contact,
    this.mfa_required,
    this.permissions,
    this.session,
  });

  factory AuthLoginResponse.fromMap(Map<String, dynamic> map) {
    return AuthLoginResponse(
      challenge_id: map['challenge_id']?.toString(),
      contact: map['contact'] != null ? Contact.fromMap(map['contact']) : null,
      mfa_required: map['mfa_required'],
      permissions: map['permissions'] != null
          ? ContactPermissions.fromMap(map['permissions'])
          : null,
      session:
          map['session'] != null ? AuthSession.fromMap(map['session']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "challenge_id": challenge_id,
      "contact": contact?.toMap(),
      "mfa_required": mfa_required,
      "permissions": permissions?.toMap(),
      "session": session?.toMap(),
    };
  }
}
