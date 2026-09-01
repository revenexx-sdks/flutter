part of '../../models.dart';

///
class AuthLogoutRequest implements Model {
  /// The session to revoke — `session.$id` from the login.
  final String session_id;

  /// The platform user — `session.userId` from the login.
  final String user_id;

  AuthLogoutRequest({
    required this.session_id,
    required this.user_id,
  });

  factory AuthLogoutRequest.fromMap(Map<String, dynamic> map) {
    return AuthLogoutRequest(
      session_id: map['session_id'].toString(),
      user_id: map['user_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "session_id": session_id,
      "user_id": user_id,
    };
  }
}
