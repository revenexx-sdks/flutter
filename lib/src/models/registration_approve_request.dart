part of '../../models.dart';

/// No required fields — send {}.
class RegistrationApproveRequest implements Model {
    /// Who approved it — recorded on the contact and carried in the event. Free text (operator id or email); this app does not resolve it.
    final String? decided_by;

    RegistrationApproveRequest({
        this.decided_by,
    });

    factory RegistrationApproveRequest.fromMap(Map<String, dynamic> map) {
        return RegistrationApproveRequest(
            decided_by: map['decided_by']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "decided_by": decided_by,
        };
    }
}
