part of '../../models.dart';

/// Identities List
class IdentityList implements Model {
    /// List of identities.
    final List<Identity> identities;

    /// Total number of identities that matched your query.
    final int total;

    IdentityList({
        required this.identities,
        required this.total,
    });

    factory IdentityList.fromMap(Map<String, dynamic> map) {
        return IdentityList(
            identities: List<Identity>.from(map['identities'].map((p) => Identity.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "identities": identities.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
