part of '../../enums.dart';

enum SegmentRulePreviewResponseRuleMatch {
  all(value: 'all'),
  any(value: 'any');

  const SegmentRulePreviewResponseRuleMatch({required this.value});

  final String value;

  String toJson() => value;
}
