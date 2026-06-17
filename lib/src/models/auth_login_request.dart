part of '../../models.dart';

/// 
class AuthLoginRequest implements Model {
    /// 
    final String email;

    /// 
    final String password;

    AuthLoginRequest({
        required this.email,
        required this.password,
    });

    factory AuthLoginRequest.fromMap(Map<String, dynamic> map) {
        return AuthLoginRequest(
            email: map['email'].toString(),
            password: map['password'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "password": password,
        };
    }
}
