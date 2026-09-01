part of '../../enums.dart';

enum PriceCurrencySource {
  request(value: 'request'),
  market(value: 'market'),
  tenant(value: 'tenant'),
  fallback(value: 'fallback');

  const PriceCurrencySource({required this.value});

  final String value;

  String toJson() => value;
}
