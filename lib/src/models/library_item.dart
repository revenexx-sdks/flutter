part of '../../models.dart';

/// 
class LibraryItem implements Model {
    /// 
    final String? bundle;

    /// 
    final String? created_at;

    /// 
    final String? created_by;

    /// 
    final String? deleted_at;

    /// 
    final String? id;

    /// 
    final String? label;

    /// 
    final Map? tree;

    /// 
    final String? updated_at;

    LibraryItem({
        this.bundle,
        this.created_at,
        this.created_by,
        this.deleted_at,
        this.id,
        this.label,
        this.tree,
        this.updated_at,
    });

    factory LibraryItem.fromMap(Map<String, dynamic> map) {
        return LibraryItem(
            bundle: map['bundle']?.toString(),
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            deleted_at: map['deleted_at']?.toString(),
            id: map['id']?.toString(),
            label: map['label']?.toString(),
            tree: map['tree'],
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "created_at": created_at,
            "created_by": created_by,
            "deleted_at": deleted_at,
            "id": id,
            "label": label,
            "tree": tree,
            "updated_at": updated_at,
        };
    }
}
