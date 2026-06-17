part of '../../models.dart';

/// Countries List
class CountryList implements Model {
    /// List of countries.
    final List<Country> countries;

    /// Total number of countries that matched your query.
    final int total;

    CountryList({
        required this.countries,
        required this.total,
    });

    factory CountryList.fromMap(Map<String, dynamic> map) {
        return CountryList(
            countries: List<Country>.from(map['countries'].map((p) => Country.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "countries": countries.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
