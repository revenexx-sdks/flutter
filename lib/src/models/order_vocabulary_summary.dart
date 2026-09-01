part of '../../models.dart';

/// One vocabulary, named and titled but without its values.
class OrderVocabularySummary implements Model {
    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? description;

    /// Vocabulary name, unique within the app.
    final enums.OrderVocabularySummaryName? name;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? title;

    OrderVocabularySummary({
        this.description,
        this.name,
        this.title,
    });

    factory OrderVocabularySummary.fromMap(Map<String, dynamic> map) {
        return OrderVocabularySummary(
            description: map['description']?.toString(),
            name: map['name'] != null ? enums.OrderVocabularySummaryName.values.firstWhere((e) => e.value == map['name']) : null,
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
