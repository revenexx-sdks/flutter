part of '../../models.dart';

/// 
class Menu implements Model {
    /// 
    final String? created_at;

    /// 
    final String? created_by;

    /// 
    final String? deleted_at;

    /// 
    final String? id;

    /// 
    final Map? items;

    /// 
    final String? label;

    /// 
    final String? menu_key;

    /// 
    final String? updated_at;

    Menu({
        this.created_at,
        this.created_by,
        this.deleted_at,
        this.id,
        this.items,
        this.label,
        this.menu_key,
        this.updated_at,
    });

    factory Menu.fromMap(Map<String, dynamic> map) {
        return Menu(
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            deleted_at: map['deleted_at']?.toString(),
            id: map['id']?.toString(),
            items: map['items'],
            label: map['label']?.toString(),
            menu_key: map['menu_key']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "created_by": created_by,
            "deleted_at": deleted_at,
            "id": id,
            "items": items,
            "label": label,
            "menu_key": menu_key,
            "updated_at": updated_at,
        };
    }
}
