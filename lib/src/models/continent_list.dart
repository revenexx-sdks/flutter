part of '../../models.dart';

/// Continents List
class ContinentList implements Model {
    /// List of continents.
    final List<Continent> continents;

    /// Total number of continents that matched your query.
    final int total;

    ContinentList({
        required this.continents,
        required this.total,
    });

    factory ContinentList.fromMap(Map<String, dynamic> map) {
        return ContinentList(
            continents: List<Continent>.from(map['continents'].map((p) => Continent.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "continents": continents.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
