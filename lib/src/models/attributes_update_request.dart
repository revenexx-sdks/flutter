part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AttributesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final Map? config;

    /// 
    final String? entity_ref;

    /// 
    final String? entity_type;

    /// 
    final String? group_id;

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
    final bool? usable_in_grid;

    /// 
    final Map? validation;

    AttributesUpdateRequest({
        this.code,
        this.config,
        this.entity_ref,
        this.entity_type,
        this.group_id,
        this.is_filterable,
        this.is_unique,
        this.labels,
        this.localizable,
        this.position,
        this.scopable,
        this.type,
        this.usable_in_grid,
        this.validation,
    });

    factory AttributesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AttributesUpdateRequest(
            code: map['code']?.toString(),
            config: map['config'],
            entity_ref: map['entity_ref']?.toString(),
            entity_type: map['entity_type']?.toString(),
            group_id: map['group_id']?.toString(),
            is_filterable: map['is_filterable'],
            is_unique: map['is_unique'],
            labels: map['labels'],
            localizable: map['localizable'],
            position: map['position'],
            scopable: map['scopable'],
            type: map['type']?.toString(),
            usable_in_grid: map['usable_in_grid'],
            validation: map['validation'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "config": config,
            "entity_ref": entity_ref,
            "entity_type": entity_type,
            "group_id": group_id,
            "is_filterable": is_filterable,
            "is_unique": is_unique,
            "labels": labels,
            "localizable": localizable,
            "position": position,
            "scopable": scopable,
            "type": type,
            "usable_in_grid": usable_in_grid,
            "validation": validation,
        };
    }
}
