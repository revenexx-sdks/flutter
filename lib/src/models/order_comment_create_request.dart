part of '../../models.dart';

/// 
class OrderCommentCreateRequest implements Model {
    /// 
    final String? author;

    /// 
    final String body;

    /// Default &#039;internal&#039;.
    final enums.OrderCommentVisibility? visibility;

    OrderCommentCreateRequest({
        this.author,
        required this.body,
        this.visibility,
    });

    factory OrderCommentCreateRequest.fromMap(Map<String, dynamic> map) {
        return OrderCommentCreateRequest(
            author: map['author']?.toString(),
            body: map['body'].toString(),
            visibility: map['visibility'] != null ? enums.OrderCommentVisibility.values.firstWhere((e) => e.value == map['visibility']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "author": author,
            "body": body,
            "visibility": visibility?.value,
        };
    }
}
