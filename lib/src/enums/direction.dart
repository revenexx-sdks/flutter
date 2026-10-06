part of '../../enums.dart';

enum Direction {
  ximport(value: 'import'),
  xexport(value: 'export');

  const Direction({required this.value});

  final String value;

  String toJson() => value;
}
