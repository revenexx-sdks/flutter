part of '../../models.dart';

/// Create or replace the menu identified by menuKey (idempotent per tenant). `items` is written wholesale — there is no per-entry edit, so send the whole tree every time.
class MenuUpsertRequest implements Model {
    /// The ordered navigation tree. Replaces the stored one completely.
    final List<PageMenuItem>? items;

    /// What this menu is called for the people who edit it. Required on a create; an update keeps the label it had when this is left out.
    final String label;

    /// The stable slot the theme asks for this menu by. Idempotency is keyed on it: sending an existing key replaces that menu instead of creating a second one.
    final String menuKey;

    MenuUpsertRequest({
        this.items,
        required this.label,
        required this.menuKey,
    });

    factory MenuUpsertRequest.fromMap(Map<String, dynamic> map) {
        return MenuUpsertRequest(
            items: map['items'] != null ? List<PageMenuItem>.from(map['items'].map((p) => PageMenuItem.fromMap(p))) : null,
            label: map['label'].toString(),
            menuKey: map['menuKey'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items?.map((p) => p.toMap()).toList(),
            "label": label,
            "menuKey": menuKey,
        };
    }

    List<T> convertTo<T>(T Function(Map) fromJson) =>
        (items ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
