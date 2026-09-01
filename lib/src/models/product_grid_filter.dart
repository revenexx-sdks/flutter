part of '../../models.dart';

/// 
class ProductGridFilter implements Model {
    /// The attribute code to filter on.
    final String? code;

    /// The attribute's i18n labels, for the filter's own caption.
    final Map? label;

    /// Which control the filter asks for — the same widget vocabulary the columns use.
    final String? type;

    ProductGridFilter({
        this.code,
        this.label,
        this.type,
    });

    factory ProductGridFilter.fromMap(Map<String, dynamic> map) {
        return ProductGridFilter(
            code: map['code']?.toString(),
            label: map['label'],
            type: map['type']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "label": label,
            "type": type,
        };
    }
}
