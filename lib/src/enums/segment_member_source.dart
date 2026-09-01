part of '../../enums.dart';

enum SegmentMemberSource {
  manual(value: 'manual'),
  rule(value: 'rule');

  const SegmentMemberSource({required this.value});

  final String value;

  String toJson() => value;
}
