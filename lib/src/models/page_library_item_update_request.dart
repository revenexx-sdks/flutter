part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PageLibraryItemUpdateRequest implements Model {
    /// 
    final String? bundle;

    /// 
    final String? label;

    /// Serialized block tree ({ bundle, props, props_i18n, options, children }).
    final Map? tree;

    PageLibraryItemUpdateRequest({
        this.bundle,
        this.label,
        this.tree,
    });

    factory PageLibraryItemUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PageLibraryItemUpdateRequest(
            bundle: map['bundle']?.toString(),
            label: map['label']?.toString(),
            tree: map['tree'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "label": label,
            "tree": tree,
        };
    }
}
