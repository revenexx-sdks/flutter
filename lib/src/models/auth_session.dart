part of '../../models.dart';

/// Platform auth session. Treat `secret` as a credential — the trusted BFF stores it server-side (HTTP-only cookie), never in the browser.
class AuthSession implements Model {
    /// The session id. Send it back as `session_id` to log out, or to have `/auth/me` check that the session is still alive.
    final String? $id;

    /// When the session stops being valid on its own.
    final String? expire;

    /// How the session was created. Server-minted sessions from this route are not the browser-facing email/password ones, so this says which mechanism issued it.
    final String? provider;

    /// The session CREDENTIAL. Whoever holds it is logged in — the BFF keeps it server-side (an HTTP-only cookie), never in the browser and never in a log.
    final String? secret;

    /// The platform user this session belongs to — the `user_id` every other auth route takes. NOT the contact id: the contact is in `contact`.
    final String? userId;

    AuthSession({
        this.$id,
        this.expire,
        this.provider,
        this.secret,
        this.userId,
    });

    factory AuthSession.fromMap(Map<String, dynamic> map) {
        return AuthSession(
            $id: map['\$id']?.toString(),
            expire: map['expire']?.toString(),
            provider: map['provider']?.toString(),
            secret: map['secret']?.toString(),
            userId: map['userId']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "expire": expire,
            "provider": provider,
            "secret": secret,
            "userId": userId,
        };
    }
}
