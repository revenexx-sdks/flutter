part of '../../models.dart';

/// 
class CategoryRuleCondition implements Model {
    /// A product column (sku, kind, enabled, family_id, parent_id) or 'attribute:<code>' for the common bucket of attribute_values. An attribute code is [A-Za-z0-9_]+. Locale-/channel-scoped attributes are not supported.
    final String field;

    /// How to compare. 'eq'/'neq' are equality, 'gt'/'gte'/'lt'/'lte' order (numerically for a number, as text for a string), 'in' membership, 'contains'/'starts_with'/'ends_with' substring, 'is_empty'/'is_not_empty' presence — those last two take no `value`.
    final enums.CategoryRuleOperator xoperator;

    /// Comparison value. An array for 'in' — non-empty, at most 200 entries, all of the same type; omitted for 'is_empty'/'is_not_empty'; a non-empty string for 'contains'/'starts_with'/'ends_with'; a string or number for gt/gte/lt/lte. Numbers compare numerically (jsonb), strings as text.
    final String? value;

    CategoryRuleCondition({
        required this.field,
        required this.xoperator,
        this.value,
    });

    factory CategoryRuleCondition.fromMap(Map<String, dynamic> map) {
        return CategoryRuleCondition(
            field: map['field'].toString(),
            xoperator: enums.CategoryRuleOperator.values.firstWhere((e) => e.value == map['operator']),
            value: map['value']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "field": field,
            "operator": xoperator.value,
            "value": value,
        };
    }
}
