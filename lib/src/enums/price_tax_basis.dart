part of '../../enums.dart';

enum PriceTaxBasis {
  net(value: 'net'),
  gross(value: 'gross');

  const PriceTaxBasis({required this.value});

  final String value;

  String toJson() => value;
}
