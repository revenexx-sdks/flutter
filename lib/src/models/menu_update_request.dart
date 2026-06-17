part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class MenuUpdateRequest implements Model {
    /// 
    final List<Map>? items;

    /// 
    final String? label;

    MenuUpdateRequest({
        this.items,
        this.label,
    });

    factory MenuUpdateRequest.fromMap(Map<String, dynamic> map) {
        return MenuUpdateRequest(
            items: List.from(map['items'] ?? []),
            label: map['label']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "items": items,
            "label": label,
        };
    }
}
