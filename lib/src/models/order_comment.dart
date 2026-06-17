part of '../../models.dart';

/// 
class OrderComment implements Model {
    /// 
    final String? author;

    /// 
    final String? body;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? order_id;

    /// 
    final String? visibility;

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
            visibility: map['visibility']?.toString(),
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
            "visibility": visibility,
        };
    }
}
