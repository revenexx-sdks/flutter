part of '../../models.dart';

/// 
class AuthOtpRequest implements Model {
    /// Who to send the code to. As with the sign-in link, an unknown address creates an account rather than failing.
    final String email;

    AuthOtpRequest({
        required this.email,
    });

    factory AuthOtpRequest.fromMap(Map<String, dynamic> map) {
        return AuthOtpRequest(
            email: map['email'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
        };
    }
}
