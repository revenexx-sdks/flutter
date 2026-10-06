part of '../../enums.dart';

enum MarketTaxBasis {
  net(value: 'net'),
  gross(value: 'gross');

  const MarketTaxBasis({required this.value});

  final String value;

  String toJson() => value;
}
