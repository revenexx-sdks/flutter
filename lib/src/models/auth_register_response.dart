part of '../../models.dart';

/// 
class AuthRegisterResponse implements Model {
    /// True when the tenant runs registration_mode='approval_required' — do NOT log the buyer in.
    final bool? approval_required;

    /// The stored customer record — this app is its system of record.
    final Contact? contact;

    /// 'pending' means the login is disabled until a merchant approves.
    final enums.RegistrationStatus? registration_status;

    /// The platform user that was created. Keep it: logout, /auth/me and the recovery confirm all take it.
    final String? user_id;

    /// Whether an address confirmation went out. True only when the tenant's `email_verification` asks for one on registration, the registration is a finished account rather than an application, and `verification_url` was supplied.
    final bool? verification_sent;

    /// Whether the tenant's welcome mail went out. Best effort on purpose: the account exists either way, and a registration is not undone because a message service was unreachable. False for an APPLICATION, which is not an account yet and is announced by `registration.submitted` instead.
    final bool? welcome_sent;

    AuthRegisterResponse({
        this.approval_required,
        this.contact,
        this.registration_status,
        this.user_id,
        this.verification_sent,
        this.welcome_sent,
    });

    factory AuthRegisterResponse.fromMap(Map<String, dynamic> map) {
        return AuthRegisterResponse(
            approval_required: map['approval_required'],
            contact: map['contact'] != null ? Contact.fromMap(map['contact']) : null,
            registration_status: map['registration_status'] != null ? enums.RegistrationStatus.values.firstWhere((e) => e.value == map['registration_status']) : null,
            user_id: map['user_id']?.toString(),
            verification_sent: map['verification_sent'],
            welcome_sent: map['welcome_sent'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "approval_required": approval_required,
            "contact": contact?.toMap(),
            "registration_status": registration_status?.value,
            "user_id": user_id,
            "verification_sent": verification_sent,
            "welcome_sent": welcome_sent,
        };
    }
}
