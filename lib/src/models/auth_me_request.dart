part of '../../models.dart';

/// 
class AuthMeRequest implements Model {
    /// Optional session to verify — answers 401 when the session is expired or revoked.
    final String? session_id;

    /// 
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
