part of '../../models.dart';

///
class AuthRecoveryRequest implements Model {
  /// Who to send the recovery mail to. An address nobody holds is not distinguished here — do not build an account-existence check on the answer.
  final String email;

  /// Where the mailed link points. `userId`, `secret` and `expire` are appended as query parameters — the first two are what the confirm call takes. Same shape the identity service's own mail used, so a storefront that already handles that link needs no change.
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
