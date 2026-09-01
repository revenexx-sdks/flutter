part of '../../models.dart';

/// 
class SearchHit implements Model {
    /// The matching document; its properties are the collection's own fields.
    final Map<String, dynamic>? document;

    /// Per-field highlight snippets, keyed by field name.
    final Map<String, dynamic>? highlight;

    /// Relevance score.
    final int? text_match;

    final Map<String, dynamic> data;

    SearchHit({
        this.document,
        this.highlight,
        this.text_match,
        required this.data,
    });

    factory SearchHit.fromMap(Map<String, dynamic> map) {
        return SearchHit(
            document: map['document'],
            highlight: map['highlight'],
            text_match: map['text_match'],
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "document": document,
            "highlight": highlight,
            "text_match": text_match,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
