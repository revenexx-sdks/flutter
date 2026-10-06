part of '../../models.dart';

/// One navigation menu, ready to render.
class DeliveryMenu implements Model {
  /// The menu KEY (`main`, `footer`, `account`), not the row id — this is the handle a theme hard-codes.
  final String? id;

  /// The ordered navigation tree, exactly as it is stored. Render it in order; nesting is `items` inside an entry.
  final List<PageMenuItem>? items;

  /// What the menu is called for the people who edit it. A theme rarely renders it.
  final String? label;

  DeliveryMenu({
    this.id,
    this.items,
    this.label,
  });

  factory DeliveryMenu.fromMap(Map<String, dynamic> map) {
    return DeliveryMenu(
      id: map['id']?.toString(),
      items: map['items'] != null
          ? List<PageMenuItem>.from(
              map['items'].map((p) => PageMenuItem.fromMap(p)))
          : null,
      label: map['label']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "items": items?.map((p) => p.toMap()).toList(),
      "label": label,
    };
  }

  List<T> convertTo<T>(T Function(Map) fromJson) =>
      (items ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
