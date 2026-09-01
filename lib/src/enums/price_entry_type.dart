part of '../../enums.dart';

enum PriceEntryType {
  standard(value: 'standard'),
  onRequest(value: 'on_request');

  const PriceEntryType({required this.value});

  final String value;

  String toJson() => value;
}
