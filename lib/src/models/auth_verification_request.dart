part of '../../models.dart';

///
class AuthVerificationRequest implements Model {
  /// Where the mailed link points. `userId`, `secret` and `expire` are appended as query parameters; the first two are what the confirm call takes.
  final String url;

  /// The platform user whose address is being confirmed — `user_id` from the registration, or `session.userId` from a login.
  final String user_id;

  AuthVerificationRequest({
    required this.url,
    required this.user_id,
  });

  factory AuthVerificationRequest.fromMap(Map<String, dynamic> map) {
    return AuthVerificationRequest(
      url: map['url'].toString(),
      user_id: map['user_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "url": url,
      "user_id": user_id,
    };
  }
}
