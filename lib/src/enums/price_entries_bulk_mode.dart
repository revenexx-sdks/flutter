part of '../../enums.dart';

enum PriceEntriesBulkMode {
  upsert(value: 'upsert'),
  append(value: 'append');

  const PriceEntriesBulkMode({required this.value});

  final String value;

  String toJson() => value;
}
