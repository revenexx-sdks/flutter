part of '../../enums.dart';

enum IoProfileResourceApplyMode {
  upsert(value: 'upsert'),
  fullSync(value: 'full-sync'),
  append(value: 'append');

  const IoProfileResourceApplyMode({required this.value});

  final String value;

  String toJson() => value;
}
