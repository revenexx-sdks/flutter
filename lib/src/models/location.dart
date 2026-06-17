part of '../../models.dart';

/// 
class Location implements Model {
    /// 
    final Map? address;

    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final bool? enabled;

    /// 
    final String? id;

    /// 
    final Map? labels;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final int? priority;

    /// 
    final String? type;

    /// 
    final String? updated_at;

    Location({
        this.address,
        this.code,
        this.created_at,
        this.enabled,
        this.id,
        this.labels,
        this.metadata,
        this.name,
        this.priority,
        this.type,
        this.updated_at,
    });

    factory Location.fromMap(Map<String, dynamic> map) {
        return Location(
            address: map['address'],
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            enabled: map['enabled'],
            id: map['id']?.toString(),
            labels: map['labels'],
            metadata: map['metadata'],
            name: map['name']?.toString(),
            priority: map['priority'],
            type: map['type']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "address": address,
            "code": code,
            "created_at": created_at,
            "enabled": enabled,
            "id": id,
            "labels": labels,
            "metadata": metadata,
            "name": name,
            "priority": priority,
            "type": type,
            "updated_at": updated_at,
        };
    }
}
