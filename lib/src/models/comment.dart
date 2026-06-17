part of '../../models.dart';

/// 
class Comment implements Model {
    /// 
    final String? author_id;

    /// 
    final String? author_name;

    /// 
    final Map? block_uuids;

    /// 
    final String? body;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? page_id;

    /// 
    final String? parent_id;

    /// 
    final bool? resolved;

    /// 
    final String? updated_at;

    Comment({
        this.author_id,
        this.author_name,
        this.block_uuids,
        this.body,
        this.created_at,
        this.id,
        this.page_id,
        this.parent_id,
        this.resolved,
        this.updated_at,
    });

    factory Comment.fromMap(Map<String, dynamic> map) {
        return Comment(
            author_id: map['author_id']?.toString(),
            author_name: map['author_name']?.toString(),
            block_uuids: map['block_uuids'],
            body: map['body']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            page_id: map['page_id']?.toString(),
            parent_id: map['parent_id']?.toString(),
            resolved: map['resolved'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "author_id": author_id,
            "author_name": author_name,
            "block_uuids": block_uuids,
            "body": body,
            "created_at": created_at,
            "id": id,
            "page_id": page_id,
            "parent_id": parent_id,
            "resolved": resolved,
            "updated_at": updated_at,
        };
    }
}
