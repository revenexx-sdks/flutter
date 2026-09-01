part of '../../models.dart';

/// 
class RegistrationRejectRequest implements Model {
    /// Who rejected it — recorded on the contact and carried in the event.
    final String? decided_by;

    /// Why the application was declined. Always stored on the contact. It only reaches the APPLICANT when the tenant's registration_reason_disclosed setting is on — the event payload then carries it, and so does the 403 the login answers.
    final String reason;

    RegistrationRejectRequest({
        this.decided_by,
        required this.reason,
    });

    factory RegistrationRejectRequest.fromMap(Map<String, dynamic> map) {
        return RegistrationRejectRequest(
            decided_by: map['decided_by']?.toString(),
            reason: map['reason'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "decided_by": decided_by,
            "reason": reason,
        };
    }
}
