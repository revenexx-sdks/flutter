part of '../../models.dart';

/// A note on an order, either internal between operators or meant for the customer to see.
class OrderComment implements Model {
    /// Who wrote it, as the caller reported it. Free text; not resolved against a user directory.
    final String? author;

    /// The comment itself. Plain text; this app neither renders nor sanitizes it.
    final String? body;

    /// When the comment was written. Comments come back oldest first.
    final String? created_at;

    /// Primary key of the comment.
    final String? id;

    /// The order the comment hangs on.
    final String? order_id;

    /// Who may see it: 'internal' is a note between operators, 'customer' is meant to be shown in the customer's order view. Nothing here enforces that — this app labels the comment and the client showing it decides. Defaults to the tenant's default_comment_visibility.
    final enums.OrderCommentVisibility? visibility;

    OrderComment({
        this.author,
        this.body,
        this.created_at,
        this.id,
        this.order_id,
        this.visibility,
    });

    factory OrderComment.fromMap(Map<String, dynamic> map) {
        return OrderComment(
            author: map['author']?.toString(),
            body: map['body']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            order_id: map['order_id']?.toString(),
            visibility: map['visibility'] != null ? enums.OrderCommentVisibility.values.firstWhere((e) => e.value == map['visibility']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "author": author,
            "body": body,
            "created_at": created_at,
            "id": id,
            "order_id": order_id,
            "visibility": visibility?.value,
        };
    }
}
