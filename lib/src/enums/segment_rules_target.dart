part of '../../enums.dart';

enum SegmentRulesTarget {
    organizations(value: 'organizations');

    const SegmentRulesTarget({
        required this.value
    });

    final String value;

    String toJson() => value;
}