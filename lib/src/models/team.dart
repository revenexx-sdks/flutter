part of '../../models.dart';

/// Team
class Team implements Model {
    /// Team creation date in ISO 8601 format.
    final String $createdAt;

    /// Team ID.
    final String $id;

    /// Team update date in ISO 8601 format.
    final String $updatedAt;

    /// Team name.
    final String name;

    /// Team preferences as a key-value object
    final Preferences prefs;

    /// Total number of team members.
    final int total;

    Team({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.name,
        required this.prefs,
        required this.total,
    });

    factory Team.fromMap(Map<String, dynamic> map) {
        return Team(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            prefs: Preferences.fromMap(map['prefs']),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "name": name,
            "prefs": prefs.toMap(),
            "total": total,
        };
    }
}
