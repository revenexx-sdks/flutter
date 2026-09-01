part of '../../enums.dart';

enum PriceTaxMarketSource {
  request(value: 'request'),
  header(value: 'header'),
  soleMarket(value: 'sole_market');

  const PriceTaxMarketSource({required this.value});

  final String value;

  String toJson() => value;
}
