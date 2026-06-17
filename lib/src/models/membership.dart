part of '../../models.dart';

/// Membership
class Membership implements Model {
    /// Membership creation date in ISO 8601 format.
    final String $createdAt;

    /// Membership ID.
    final String $id;

    /// Membership update date in ISO 8601 format.
    final String $updatedAt;

    /// User confirmation status, true if the user has joined the team or false otherwise.
    final bool confirm;

    /// Date, the user has been invited to join the team in ISO 8601 format.
    final String invited;

    /// Date, the user has accepted the invitation to join the team in ISO 8601 format.
    final String joined;

    /// Multi factor authentication status, true if the user has MFA enabled or false otherwise. Hide this attribute by toggling membership privacy in the Console.
    final bool mfa;

    /// User list of roles
    final List<String> roles;

    /// Team ID.
    final String teamId;

    /// Team name.
    final String teamName;

    /// User email address. Hide this attribute by toggling membership privacy in the Console.
    final String userEmail;

    /// User ID.
    final String userId;

    /// User name. Hide this attribute by toggling membership privacy in the Console.
    final String userName;

    Membership({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.confirm,
        required this.invited,
        required this.joined,
        required this.mfa,
        required this.roles,
        required this.teamId,
        required this.teamName,
        required this.userEmail,
        required this.userId,
        required this.userName,
    });

    factory Membership.fromMap(Map<String, dynamic> map) {
        return Membership(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            confirm: map['confirm'],
            invited: map['invited'].toString(),
            joined: map['joined'].toString(),
            mfa: map['mfa'],
            roles: List.from(map['roles'] ?? []),
            teamId: map['teamId'].toString(),
            teamName: map['teamName'].toString(),
            userEmail: map['userEmail'].toString(),
            userId: map['userId'].toString(),
            userName: map['userName'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "confirm": confirm,
            "invited": invited,
            "joined": joined,
            "mfa": mfa,
            "roles": roles,
            "teamId": teamId,
            "teamName": teamName,
            "userEmail": userEmail,
            "userId": userId,
            "userName": userName,
        };
    }
}
