part of '../../models.dart';

/// MFAFactors
class MfaFactors implements Model {
    /// Can email be used for MFA challenge for this account.
    final bool email;

    /// Can phone (SMS) be used for MFA challenge for this account.
    final bool phone;

    /// Can recovery code be used for MFA challenge for this account.
    final bool recoveryCode;

    /// Can TOTP be used for MFA challenge for this account.
    final bool totp;

    MfaFactors({
        required this.email,
        required this.phone,
        required this.recoveryCode,
        required this.totp,
    });

    factory MfaFactors.fromMap(Map<String, dynamic> map) {
        return MfaFactors(
            email: map['email'],
            phone: map['phone'],
            recoveryCode: map['recoveryCode'],
            totp: map['totp'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "email": email,
            "phone": phone,
            "recoveryCode": recoveryCode,
            "totp": totp,
        };
    }
}
