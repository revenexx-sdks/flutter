part of '../../models.dart';

/// Platform auth session. Treat `secret` as a credential — the trusted BFF stores it server-side (HTTP-only cookie), never in the browser.
class AuthSession implements Model {
    /// 
    final String? $id;

    /// 
    final String? expire;

    /// 
    final String? provider;

    /// 
    final String? secret;

    /// 
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
