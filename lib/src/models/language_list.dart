part of '../../models.dart';

/// Languages List
class LanguageList implements Model {
    /// List of languages.
    final List<Language> languages;

    /// Total number of languages that matched your query.
    final int total;

    LanguageList({
        required this.languages,
        required this.total,
    });

    factory LanguageList.fromMap(Map<String, dynamic> map) {
        return LanguageList(
            languages: List<Language>.from(map['languages'].map((p) => Language.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "languages": languages.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
