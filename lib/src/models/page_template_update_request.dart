part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PageTemplateUpdateRequest implements Model {
    /// 
    final String? description;

    /// 
    final String? field_name;

    /// 
    final bool? is_default;

    /// 
    final String? label;

    /// 
    final String? page_bundle;

    /// Serialized block trees ({ bundle, props, props_i18n, options, children }).
    final List<Map>? tree;

    PageTemplateUpdateRequest({
        this.description,
        this.field_name,
        this.is_default,
        this.label,
        this.page_bundle,
        this.tree,
    });

    factory PageTemplateUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PageTemplateUpdateRequest(
            description: map['description']?.toString(),
            field_name: map['field_name']?.toString(),
            is_default: map['is_default'],
            label: map['label']?.toString(),
            page_bundle: map['page_bundle']?.toString(),
            tree: List.from(map['tree'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "field_name": field_name,
            "is_default": is_default,
            "label": label,
            "page_bundle": page_bundle,
            "tree": tree,
        };
    }
}
