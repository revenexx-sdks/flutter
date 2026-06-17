part of '../../models.dart';

/// Country
class Country implements Model {
    /// Country two-character ISO 3166-1 alpha code.
    final String code;

    /// Country name.
    final String name;

    Country({
        required this.code,
        required this.name,
    });

    factory Country.fromMap(Map<String, dynamic> map) {
        return Country(
            code: map['code'].toString(),
            name: map['name'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "name": name,
        };
    }
}
