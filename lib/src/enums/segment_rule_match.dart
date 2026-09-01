part of '../../enums.dart';

enum SegmentRuleMatch {
    all(value: 'all'),
    any(value: 'any');

    const SegmentRuleMatch({
        required this.value
    });

    final String value;

    String toJson() => value;
}