part of '../../models.dart';

/// 
class AuthRecoveryConfirmRequest implements Model {
    /// 
    final String password;

    /// 
    final String secret;

    /// 
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
