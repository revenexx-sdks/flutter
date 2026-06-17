part of '../../models.dart';

/// Template Variable
class TemplateVariable implements Model {
    /// Variable Description.
    final String description;

    /// Variable Name.
    final String name;

    /// Variable Placeholder.
    final String placeholder;

    /// Is the variable required?
    final bool xrequired;

    /// Variable secret flag. Secret variables can only be updated or deleted, but never read.
    final bool secret;

    /// Variable Type.
    final String type;

    /// Variable Value.
    final String value;

    TemplateVariable({
        required this.description,
        required this.name,
        required this.placeholder,
        required this.xrequired,
        required this.secret,
        required this.type,
        required this.value,
    });

    factory TemplateVariable.fromMap(Map<String, dynamic> map) {
        return TemplateVariable(
            description: map['description'].toString(),
            name: map['name'].toString(),
            placeholder: map['placeholder'].toString(),
            xrequired: map['required'],
            secret: map['secret'],
            type: map['type'].toString(),
            value: map['value'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "description": description,
            "name": name,
            "placeholder": placeholder,
            "required": xrequired,
            "secret": secret,
            "type": type,
            "value": value,
        };
    }
}
