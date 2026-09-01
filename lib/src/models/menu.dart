part of '../../models.dart';

/// One navigation menu of the tenant, addressed by the stable key a theme looks it up under.
class Menu implements Model {
  /// When the menu was created.
  final String? created_at;

  /// The user id that created the menu.
  final String? created_by;

  /// The tombstone. A soft-deleted menu disappears from the renderer immediately.
  final String? deleted_at;

  /// The menu row id. Used by the management routes; the renderer addresses a menu by its `menu_key` instead, because that is the thing a theme hard-codes.
  final String? id;

  /// The ordered navigation tree itself. Stored exactly as it was sent, so the theme and the editor agree on the shape without this app enforcing one.
  final List<PageMenuItem>? items;

  /// What this menu is called for the people who edit it. Never rendered in the storefront.
  final String? label;

  /// The stable name the theme asks for a menu by — `main`, `footer`, `account`. It is what makes seeding idempotent and what a header component looks up; renaming it detaches the menu from the theme slot.
  final String? menu_key;

  /// When the menu was last replaced. The upsert rewrites `items` wholesale, so this is the timestamp of the whole navigation, not of one entry.
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
      items: map['items'] != null
          ? List<PageMenuItem>.from(
              map['items'].map((p) => PageMenuItem.fromMap(p)))
          : null,
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
      "items": items?.map((p) => p.toMap()).toList(),
      "label": label,
      "menu_key": menu_key,
      "updated_at": updated_at,
    };
  }

  List<T> convertTo<T>(T Function(Map) fromJson) =>
      (items ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
