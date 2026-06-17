part of '../../models.dart';

/// 
class Channel implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final Map? labels;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final String? status;

    /// 
    final String? type;

    /// 
    final String? updated_at;

    Channel({
        this.code,
        this.created_at,
        this.id,
        this.is_default,
        this.labels,
        this.name,
        this.position,
        this.status,
        this.type,
        this.updated_at,
    });

    factory Channel.fromMap(Map<String, dynamic> map) {
        return Channel(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            status: map['status']?.toString(),
            type: map['type']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "id": id,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status,
            "type": type,
            "updated_at": updated_at,
        };
    }
}
