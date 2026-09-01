part of '../../models.dart';

///
class AuthMfaChallengeConfirmRequest implements Model {
  /// The `$id` the send answered with.
  final String challenge_id;

  /// What the buyer typed.
  final String code;

  /// The same session the challenge was created with.
  final String session_secret;

  /// The platform user, for the caller's own bookkeeping. The challenge already knows whose it is.
  final String? user_id;

  AuthMfaChallengeConfirmRequest({
    required this.challenge_id,
    required this.code,
    required this.session_secret,
    this.user_id,
  });

  factory AuthMfaChallengeConfirmRequest.fromMap(Map<String, dynamic> map) {
    return AuthMfaChallengeConfirmRequest(
      challenge_id: map['challenge_id'].toString(),
      code: map['code'].toString(),
      session_secret: map['session_secret'].toString(),
      user_id: map['user_id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "challenge_id": challenge_id,
      "code": code,
      "session_secret": session_secret,
      "user_id": user_id,
    };
  }
}
