part of '../../models.dart';

/// Continent
class Continent implements Model {
    /// Continent two letter code.
    final String code;

    /// Continent name.
    final String name;

    Continent({
        required this.code,
        required this.name,
    });

    factory Continent.fromMap(Map<String, dynamic> map) {
        return Continent(
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
