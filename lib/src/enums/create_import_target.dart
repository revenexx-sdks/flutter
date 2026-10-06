part of '../../enums.dart';

enum CreateImportTarget {
  live(value: 'live'),
  shadow(value: 'shadow');

  const CreateImportTarget({required this.value});

  final String value;

  String toJson() => value;
}
