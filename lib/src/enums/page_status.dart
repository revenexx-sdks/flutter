part of '../../enums.dart';

enum PageStatus {
  draft(value: 'draft'),
  published(value: 'published'),
  archived(value: 'archived');

  const PageStatus({required this.value});

  final String value;

  String toJson() => value;
}
