part of '../../models.dart';

/// One permitted value, with the copy and the badge tone a client renders it as.
class MarketsVocabularyValue implements Model {
    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? description;

    /// A terminal state nothing moves out of.
    final bool? xfinal;

    /// The value as stored in the column.
    final String? key;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? title;

    /// Semantic badge tone — the client decides what it looks like.
    final enums.MarketsVocabularyTone? tone;

    MarketsVocabularyValue({
        this.description,
        this.xfinal,
        this.key,
        this.title,
        this.tone,
    });

    factory MarketsVocabularyValue.fromMap(Map<String, dynamic> map) {
        return MarketsVocabularyValue(
            description: map['description']?.toString(),
            xfinal: map['final'],
            key: map['key']?.toString(),
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.MarketsVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "final": xfinal,
            "key": key,
            "title": title,
            "tone": tone?.value,
        };
    }
}
