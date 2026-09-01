part of '../../enums.dart';

enum Mode {
  upsert(value: 'upsert'),
  fullSync(value: 'full-sync'),
  append(value: 'append');

  const Mode({required this.value});

  final String value;

  String toJson() => value;
}
