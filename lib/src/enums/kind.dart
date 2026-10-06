part of '../../enums.dart';

enum Kind {
  simple(value: 'simple'),
  model(value: 'model'),
  variant(value: 'variant');

  const Kind({required this.value});

  final String value;

  String toJson() => value;
}
