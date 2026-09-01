part of '../../models.dart';

/// 
class AuthMeRequest implements Model {
    /// Optional session to verify. Pass it to ask "is this session still alive?" (a revoked one is then a 401); omit it to only ask who a user is.
    final String? session_id;

    /// The platform user to resolve — `session.userId` from the login.
    final String user_id;

    AuthMeRequest({
        this.session_id,
        required this.user_id,
    });

    factory AuthMeRequest.fromMap(Map<String, dynamic> map) {
        return AuthMeRequest(
            session_id: map['session_id']?.toString(),
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
