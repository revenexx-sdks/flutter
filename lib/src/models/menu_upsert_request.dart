part of '../../models.dart';

/// Create or update the menu identified by menuKey (idempotent per tenant). `items` is the ordered nav tree ([{ label, to, items? }]).
class MenuUpsertRequest implements Model {
    /// Ordered menu entries ({ label, to?, items? }).
    final List<Map>? items;

    /// 
    final String label;

    /// Stable menu identifier, e.g. &quot;main&quot;, &quot;footer&quot;, &quot;account&quot;.
    final String menuKey;

    MenuUpsertRequest({
        this.items,
        required this.label,
        required this.menuKey,
    });

    factory MenuUpsertRequest.fromMap(Map<String, dynamic> map) {
        return MenuUpsertRequest(
            items: List.from(map['items'] ?? []),
            label: map['label'].toString(),
            menuKey: map['menuKey'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items,
            "label": label,
            "menuKey": menuKey,
        };
    }
}
