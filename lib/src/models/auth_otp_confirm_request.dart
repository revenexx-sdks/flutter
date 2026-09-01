part of '../../models.dart';

/// 
class AuthOtpConfirmRequest implements Model {
    /// The one-time secret the mailed code carried. Spent on first use and expiring, so a second attempt with the same one is a 401 rather than a second session.
    final String secret;

    /// The `userId` the mailed code carried.
    final String user_id;

    AuthOtpConfirmRequest({
        required this.secret,
        required this.user_id,
    });

    factory AuthOtpConfirmRequest.fromMap(Map<String, dynamic> map) {
        return AuthOtpConfirmRequest(
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
