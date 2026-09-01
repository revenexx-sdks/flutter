part of '../../models.dart';

/// Partial update — omitted fields keep their current value. A template is a COPY source, so changing it never reaches the pages already made from it.
class PageTemplateUpdateRequest implements Model {
    /// A sentence about when to reach for it, shown next to the label.
    final String? description;

    /// The field this template is offered in. Null offers it in every field.
    final String? field_name;

    /// Whether a new page of this bundle starts from this template.
    final bool? is_default;

    /// What the template is called in the picker.
    final String? label;

    /// The page type this template is offered on. Null offers it on every page type.
    final String? page_bundle;

    /// The blocks the template inserts, in order. Replaces the stored tree completely.
    final List<PageBlockTree>? tree;

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
            tree: map['tree'] != null ? List<PageBlockTree>.from(map['tree'].map((p) => PageBlockTree.fromMap(p))) : null,
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
            "tree": tree?.map((p) => p.toMap()).toList(),
        };
    }
}
