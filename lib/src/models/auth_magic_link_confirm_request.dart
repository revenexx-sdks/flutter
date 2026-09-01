part of '../../models.dart';

///
class AuthMagicLinkConfirmRequest implements Model {
  /// The one-time secret the mailed link carried. Spent on first use and expiring, so a second attempt with the same one is a 401 rather than a second session.
  final String secret;

  /// The `userId` the mailed link carried.
  final String user_id;

  AuthMagicLinkConfirmRequest({
    required this.secret,
    required this.user_id,
  });

  factory AuthMagicLinkConfirmRequest.fromMap(Map<String, dynamic> map) {
    return AuthMagicLinkConfirmRequest(
      secret: map['secret'].toString(),
      user_id: map['user_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "secret": secret,
      "user_id": user_id,
    };
  }
}
