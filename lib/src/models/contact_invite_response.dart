part of '../../models.dart';

/// 
class ContactInviteResponse implements Model {
    /// Who was invited.
    final String? contact_id;

    /// Always true when this answers — a failure to send is a 502, not a false here.
    final bool? invited;

    /// The company they were invited into.
    final String? organization_id;

    ContactInviteResponse({
        this.contact_id,
        this.invited,
        this.organization_id,
    });

    factory ContactInviteResponse.fromMap(Map<String, dynamic> map) {
        return ContactInviteResponse(
            contact_id: map['contact_id']?.toString(),
            invited: map['invited'],
            organization_id: map['organization_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact_id": contact_id,
            "invited": invited,
            "organization_id": organization_id,
        };
    }
}
