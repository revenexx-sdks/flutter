part of '../../enums.dart';

enum Range {
  x24h(value: '24h'),
  x30d(value: '30d'),
  x90d(value: '90d');

  const Range({required this.value});

  final String value;

  String toJson() => value;
}
