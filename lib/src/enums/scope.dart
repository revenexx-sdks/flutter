part of '../../enums.dart';

enum Scope {
  all(value: 'all'),
  marketing(value: 'marketing');

  const Scope({required this.value});

  final String value;

  String toJson() => value;
}
