part of '../../enums.dart';

enum Source {
  manual(value: 'manual'),
  rule(value: 'rule');

  const Source({required this.value});

  final String value;

  String toJson() => value;
}
