part of '../../models.dart';

/// Function Templates List
class TemplateFunctionList implements Model {
    /// List of templates.
    final List<TemplateFunction> templates;

    /// Total number of templates that matched your query.
    final int total;

    TemplateFunctionList({
        required this.templates,
        required this.total,
    });

    factory TemplateFunctionList.fromMap(Map<String, dynamic> map) {
        return TemplateFunctionList(
            templates: List<TemplateFunction>.from(map['templates'].map((p) => TemplateFunction.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "templates": templates.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
