part of '../../models.dart';

/// Teams List
class TeamList implements Model {
    /// List of teams.
    final List<Team> teams;

    /// Total number of teams that matched your query.
    final int total;

    TeamList({
        required this.teams,
        required this.total,
    });

    factory TeamList.fromMap(Map<String, dynamic> map) {
        return TeamList(
            teams: List<Team>.from(map['teams'].map((p) => Team.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "teams": teams.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
