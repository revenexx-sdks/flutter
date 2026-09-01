part of '../../enums.dart';

enum SegmentRulePreviewResponseTarget {
    organizations(value: 'organizations');

    const SegmentRulePreviewResponseTarget({
        required this.value
    });

    final String value;

    String toJson() => value;
}