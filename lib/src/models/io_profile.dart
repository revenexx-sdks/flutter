part of '../../models.dart';

/// 
class IoProfile implements Model {
    /// 
    final String? apply_mode;

    /// 
    final String? created_at;

    /// 
    final String? direction;

    /// 
    final String? entity;

    /// 
    final String? format;

    /// 
    final String? id;

    /// 
    final bool? is_template;

    /// 
    final Map? mapping;

    /// 
    final String? name;

    /// 
    final Map? options;

    /// 
    final String? updated_at;

    IoProfile({
        this.apply_mode,
        this.created_at,
        this.direction,
        this.entity,
        this.format,
        this.id,
        this.is_template,
        this.mapping,
        this.name,
        this.options,
        this.updated_at,
    });

    factory IoProfile.fromMap(Map<String, dynamic> map) {
        return IoProfile(
            apply_mode: map['apply_mode']?.toString(),
            created_at: map['created_at']?.toString(),
            direction: map['direction']?.toString(),
            entity: map['entity']?.toString(),
            format: map['format']?.toString(),
            id: map['id']?.toString(),
            is_template: map['is_template'],
            mapping: map['mapping'],
            name: map['name']?.toString(),
            options: map['options'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "apply_mode": apply_mode,
            "created_at": created_at,
            "direction": direction,
            "entity": entity,
            "format": format,
            "id": id,
            "is_template": is_template,
            "mapping": mapping,
            "name": name,
            "options": options,
            "updated_at": updated_at,
        };
    }
}
