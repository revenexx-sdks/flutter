part of '../../models.dart';

/// 
class ChannelVocabularyIndex implements Model {
    /// The app that owns this vocabulary.
    final String? app;

    /// Every vocabulary this app owns, alphabetically: statuses, types, unassigned-visibility. Names only — fetch the values with GET /channels/vocabularies/{name}.
    final List<ChannelVocabularyRef>? vocabularies;

    ChannelVocabularyIndex({
        this.app,
        this.vocabularies,
    });

    factory ChannelVocabularyIndex.fromMap(Map<String, dynamic> map) {
        return ChannelVocabularyIndex(
            app: map['app']?.toString(),
            vocabularies: map['vocabularies'] != null ? List<ChannelVocabularyRef>.from(map['vocabularies'].map((p) => ChannelVocabularyRef.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "app": app,
            "vocabularies": vocabularies?.map((p) => p.toMap()).toList(),
        };
    }
}
