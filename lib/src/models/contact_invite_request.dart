part of '../../models.dart';

/// 
class ContactInviteRequest implements Model {
    /// Who did the inviting, as the recipient should read it. Absent, the company name is used — "Beispiel GmbH invited you" reads better than the name of somebody they have never heard of.
    final String? invited_by;

    /// Where the invitation points — the storefront sign-in, normally. There is no token in it: the person is already a member and only has to sign in.
    final String url;

    ContactInviteRequest({
        this.invited_by,
        required this.url,
    });

    factory ContactInviteRequest.fromMap(Map<String, dynamic> map) {
        return ContactInviteRequest(
            invited_by: map['invited_by']?.toString(),
            url: map['url'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "invited_by": invited_by,
            "url": url,
        };
    }
}
