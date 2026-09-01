part of '../../models.dart';

/// Documents List
class DocumentList implements Model {
    /// List of documents.
    final List<Document> documents;

    /// Total number of documents that matched your query.
    final int total;

    DocumentList({
        required this.documents,
        required this.total,
    });

    factory DocumentList.fromMap(Map<String, dynamic> map) {
        return DocumentList(
            documents: List<Document>.from(map['documents'].map((p) => Document.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "documents": documents.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }

    List<T> convertTo<T>(T Function(Map) fromJson) =>
        (documents).map((d) => d.convertTo<T>(fromJson)).toList();
}
