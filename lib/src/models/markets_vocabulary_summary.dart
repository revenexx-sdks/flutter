part of '../../models.dart';

/// One vocabulary, enough to list it in a menu.
class MarketsVocabularySummary implements Model {
    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? description;

    /// Vocabulary name, unique within the app.
    final enums.MarketsVocabularySummaryName? name;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? title;

    MarketsVocabularySummary({
        this.description,
        this.name,
        this.title,
    });

    factory MarketsVocabularySummary.fromMap(Map<String, dynamic> map) {
        return MarketsVocabularySummary(
            description: map['description']?.toString(),
            name: map['name'] != null ? enums.MarketsVocabularySummaryName.values.firstWhere((e) => e.value == map['name']) : null,
            title: map['title']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "name": name?.value,
            "title": title,
        };
    }
}
