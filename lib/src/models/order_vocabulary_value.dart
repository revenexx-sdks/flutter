part of '../../models.dart';

/// One permitted value with the words and the badge tone a client should render for it.
class OrderVocabularyValue implements Model {
    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? description;

    /// True when this value ENDS the lifecycle. Lets a reader ask "is this order still open?" instead of matching status names it guessed.
    final bool? xfinal;

    /// The value as stored — exactly what the CHECK constraint permits.
    final String? key;

    /// Only on 'return-resolutions': which return transition accepts this value. A settlement word on the refusal dialog is how the two sets got mixed up.
    final enums.OrderResolutionStage? stage;

    /// Either one string, or a map of locale to string ({"en": …, "de": …}).
    final String? title;

    /// Semantic badge colour. The client owns what each tone looks like.
    final enums.OrderVocabularyTone? tone;

    OrderVocabularyValue({
        this.description,
        this.xfinal,
        this.key,
        this.stage,
        this.title,
        this.tone,
    });

    factory OrderVocabularyValue.fromMap(Map<String, dynamic> map) {
        return OrderVocabularyValue(
            description: map['description']?.toString(),
            xfinal: map['final'],
            key: map['key']?.toString(),
            stage: map['stage'] != null ? enums.OrderResolutionStage.values.firstWhere((e) => e.value == map['stage']) : null,
            title: map['title']?.toString(),
            tone: map['tone'] != null ? enums.OrderVocabularyTone.values.firstWhere((e) => e.value == map['tone']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "final": xfinal,
            "key": key,
            "stage": stage?.value,
            "title": title,
            "tone": tone?.value,
        };
    }
}
