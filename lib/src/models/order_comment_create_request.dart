part of '../../models.dart';

/// 
class OrderCommentCreateRequest implements Model {
    /// Who wrote it, as the caller reported it. Free text; not resolved against a user directory.
    final String? author;

    /// The comment itself. Plain text; this app neither renders nor sanitizes it.
    final String body;

    /// Who may see it: 'internal' is a note between operators, 'customer' is meant to be shown in the customer's order view. Nothing here enforces that — this app labels the comment and the client showing it decides. Defaults to the tenant's default_comment_visibility. Defaults to the tenant's default_comment_visibility setting, which is 'internal' out of the box.
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
