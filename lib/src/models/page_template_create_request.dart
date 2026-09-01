part of '../../models.dart';

/// The blocks to freeze, and where the template should be offered.
class PageTemplateCreateRequest implements Model {
    /// A sentence about when to reach for it.
    final String? description;

    /// The field this template should be offered in. Null offers it in every field.
    final String? fieldName;

    /// Whether a new page of that type should start from this template.
    final bool? isDefault;

    /// What the template is called in the picker.
    final String label;

    /// The page type this template should be offered on. Omit to take the current page's own type.
    final String? pageBundle;

    /// The blocks to serialize into the template, each with its whole subtree. They are read from the CURRENT edit state, so unpublished changes are included.
    final List<String> uuids;

    PageTemplateCreateRequest({
        this.description,
        this.fieldName,
        this.isDefault,
        required this.label,
        this.pageBundle,
        required this.uuids,
    });

    factory PageTemplateCreateRequest.fromMap(Map<String, dynamic> map) {
        return PageTemplateCreateRequest(
            description: map['description']?.toString(),
            fieldName: map['fieldName']?.toString(),
            isDefault: map['isDefault'],
            label: map['label'].toString(),
            pageBundle: map['pageBundle']?.toString(),
            uuids: List.from(map['uuids'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "fieldName": fieldName,
            "isDefault": isDefault,
            "label": label,
            "pageBundle": pageBundle,
            "uuids": uuids,
        };
    }
}
