part of '../../models.dart';

/// Partial update — omitted fields keep their current value. `items` is replaced wholesale when sent.
class MenuUpdateRequest implements Model {
    /// The ordered navigation tree. Replaces the stored one completely.
    final List<PageMenuItem>? items;

    /// What this menu is called for the people who edit it.
    final String? label;

    MenuUpdateRequest({
        this.items,
        this.label,
    });

    factory MenuUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MenuUpdateRequest(
            items: map['items'] != null ? List<PageMenuItem>.from(map['items'].map((p) => PageMenuItem.fromMap(p))) : null,
            label: map['label']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items?.map((p) => p.toMap()).toList(),
            "label": label,
        };
    }

    List<T> convertTo<T>(T Function(Map) fromJson) =>
        (items ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
