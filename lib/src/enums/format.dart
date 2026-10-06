part of '../../enums.dart';

enum Format {
  csv(value: 'csv'),
  xml(value: 'xml'),
  json(value: 'json'),
  xlsx(value: 'xlsx');

  const Format({required this.value});

  final String value;

  String toJson() => value;
}
