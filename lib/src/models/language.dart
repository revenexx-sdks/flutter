part of '../../models.dart';

/// Language
class Language implements Model {
    /// Language two-character ISO 639-1 codes.
    final String code;

    /// Language name.
    final String name;

    /// Language native name.
    final String nativeName;

    Language({
        required this.code,
        required this.name,
        required this.nativeName,
    });

    factory Language.fromMap(Map<String, dynamic> map) {
        return Language(
            code: map['code'].toString(),
            name: map['name'].toString(),
            nativeName: map['nativeName'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "name": name,
            "nativeName": nativeName,
        };
    }
}
