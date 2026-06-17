part of '../../models.dart';

/// 
class Attributes implements Model {
    /// 
    final String? code;

    /// 
    final Map? config;

    /// 
    final String? created_at;

    /// 
    final String? entity_ref;

    /// 
    final String? entity_type;

    /// 
    final String? group_id;

    /// 
    final String? id;

    /// 
    final bool? is_filterable;

    /// 
    final bool? is_unique;

    /// 
    final Map? labels;

    /// 
    final bool? localizable;

    /// 
    final int? position;

    /// 
    final bool? scopable;

    /// 
    final String? type;

    /// 
    final String? updated_at;

    /// 
    final bool? usable_in_grid;

    /// 
    final Map? validation;

    Attributes({
        this.code,
        this.config,
        this.created_at,
        this.entity_ref,
        this.entity_type,
        this.group_id,
        this.id,
        this.is_filterable,
        this.is_unique,
        this.labels,
        this.localizable,
        this.position,
        this.scopable,
        this.type,
        this.updated_at,
        this.usable_in_grid,
        this.validation,
    });

    factory Attributes.fromMap(Map<String, dynamic> map) {
        return Attributes(
            code: map['code']?.toString(),
            config: map['config'],
            created_at: map['created_at']?.toString(),
            entity_ref: map['entity_ref']?.toString(),
            entity_type: map['entity_type']?.toString(),
            group_id: map['group_id']?.toString(),
            id: map['id']?.toString(),
            is_filterable: map['is_filterable'],
            is_unique: map['is_unique'],
            labels: map['labels'],
            localizable: map['localizable'],
            position: map['position'],
            scopable: map['scopable'],
            type: map['type']?.toString(),
            updated_at: map['updated_at']?.toString(),
            usable_in_grid: map['usable_in_grid'],
            validation: map['validation'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "config": config,
            "created_at": created_at,
            "entity_ref": entity_ref,
            "entity_type": entity_type,
            "group_id": group_id,
            "id": id,
            "is_filterable": is_filterable,
            "is_unique": is_unique,
            "labels": labels,
            "localizable": localizable,
            "position": position,
            "scopable": scopable,
            "type": type,
            "updated_at": updated_at,
            "usable_in_grid": usable_in_grid,
            "validation": validation,
        };
    }
}
