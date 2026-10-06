part of '../../enums.dart';

enum SegmentRulePreviewRequestTarget {
  organizations(value: 'organizations');

  const SegmentRulePreviewRequestTarget({required this.value});

  final String value;

  String toJson() => value;
}
