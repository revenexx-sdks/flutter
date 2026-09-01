part of '../../models.dart';

///
class AuthRecoveryConfirmRequest implements Model {
  /// The new password. It replaces the old one immediately; existing sessions are the identity service's business, not this app's.
  final String password;

  /// The one-time secret from the mailed link. Only that value works — it is spent on first use and expires, and anything else is a 401, so no example here would be anything but a call that fails.
  final String secret;

  /// The `userId` the mailed link carried.
  final String user_id;

  AuthRecoveryConfirmRequest({
    required this.password,
    required this.secret,
    required this.user_id,
  });

  factory AuthRecoveryConfirmRequest.fromMap(Map<String, dynamic> map) {
    return AuthRecoveryConfirmRequest(
      password: map['password'].toString(),
      secret: map['secret'].toString(),
      user_id: map['user_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "password": password,
      "secret": secret,
      "user_id": user_id,
    };
  }
}
