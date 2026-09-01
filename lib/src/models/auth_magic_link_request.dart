part of '../../models.dart';

/// 
class AuthMagicLinkRequest implements Model {
    /// Who to send the link to. An address that has never been seen creates an account rather than failing.
    final String email;

    /// Where the mailed link points. `userId`, `secret` and `expire` are appended as query parameters; the first two are what the confirm call takes.
    final String url;

    AuthMagicLinkRequest({
        required this.email,
        required this.url,
    });

    factory AuthMagicLinkRequest.fromMap(Map<String, dynamic> map) {
        return AuthMagicLinkRequest(
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
