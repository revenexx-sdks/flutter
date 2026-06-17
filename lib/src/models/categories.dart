part of '../../models.dart';

/// 
class Categories implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final String? parent_id;

    /// 
    final String? path;

    /// 
    final int? position;

    /// 
    final String? updated_at;

    /// 
    final Map? values;

    Categories({
        this.code,
        this.created_at,
        this.id,
        this.labels,
        this.parent_id,
        this.path,
        this.position,
        this.updated_at,
        this.values,
    });

    factory Categories.fromMap(Map<String, dynamic> map) {
        return Categories(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            labels: map['labels'],
            parent_id: map['parent_id']?.toString(),
            path: map['path']?.toString(),
            position: map['position'],
            updated_at: map['updated_at']?.toString(),
            values: map['values'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "labels": labels,
            "parent_id": parent_id,
            "path": path,
            "position": position,
            "updated_at": updated_at,
            "values": values,
        };
    }
}
