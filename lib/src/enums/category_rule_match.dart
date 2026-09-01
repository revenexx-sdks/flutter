part of '../../enums.dart';

enum CategoryRuleMatch {
    all(value: 'all'),
    any(value: 'any');

    const CategoryRuleMatch({
        required this.value
    });

    final String value;

    String toJson() => value;
}