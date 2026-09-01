part of '../../models.dart';

///
class AuthVerificationConfirmRequest implements Model {
  /// The one-time secret the mailed link carried. Spent on first use and expiring, so a second attempt with the same one is a 401 rather than a second session.
  final String secret;

  /// The `userId` the mailed link carried.
  final String user_id;

  AuthVerificationConfirmRequest({
    required this.secret,
    required this.user_id,
  });

  factory AuthVerificationConfirmRequest.fromMap(Map<String, dynamic> map) {
    return AuthVerificationConfirmRequest(
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
