part of '../../models.dart';

/// 
class AuthMfaChallengeRequest implements Model {
    /// Which factor to challenge. Defaults to `email`, the only one this route mails.
    final String? factor;

    /// The platform user being challenged.
    final String user_id;

    AuthMfaChallengeRequest({
        this.factor,
        required this.user_id,
    });

    factory AuthMfaChallengeRequest.fromMap(Map<String, dynamic> map) {
        return AuthMfaChallengeRequest(
            factor: map['factor']?.toString(),
            user_id: map['user_id'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "factor": factor,
            "user_id": user_id,
        };
    }
}
