part of '../../enums.dart';

enum SegmentRulePreviewRequestRuleMatch {
  all(value: 'all'),
  any(value: 'any');

  const SegmentRulePreviewRequestRuleMatch({required this.value});

  final String value;

  String toJson() => value;
}
