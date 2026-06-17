part of '../../models.dart';

/// 
class AuthRecoveryRequest implements Model {
    /// 
    final String email;

    /// Redirect URL carrying userId + secret.
    final String url;

    AuthRecoveryRequest({
        required this.email,
        required this.url,
    });

    factory AuthRecoveryRequest.fromMap(Map<String, dynamic> map) {
        return AuthRecoveryRequest(
            email: map['email'].toString(),
            url: map['url'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "url": url,
        };
    }
}
