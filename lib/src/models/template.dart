part of '../../models.dart';

/// 
class Template implements Model {
    /// 
    final String? created_at;

    /// 
    final String? created_by;

    /// 
    final String? description;

    /// 
    final String? field_name;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final String? label;

    /// 
    final String? page_bundle;

    /// 
    final Map? tree;

    /// 
    final String? updated_at;

    Template({
        this.created_at,
        this.created_by,
        this.description,
        this.field_name,
        this.id,
        this.is_default,
        this.label,
        this.page_bundle,
        this.tree,
        this.updated_at,
    });

    factory Template.fromMap(Map<String, dynamic> map) {
        return Template(
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            description: map['description']?.toString(),
            field_name: map['field_name']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            label: map['label']?.toString(),
            page_bundle: map['page_bundle']?.toString(),
            tree: map['tree'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "created_by": created_by,
            "description": description,
            "field_name": field_name,
            "id": id,
            "is_default": is_default,
            "label": label,
            "page_bundle": page_bundle,
            "tree": tree,
            "updated_at": updated_at,
        };
    }
}
