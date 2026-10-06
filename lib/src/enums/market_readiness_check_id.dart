part of '../../enums.dart';

enum MarketReadinessCheckId {
  locales(value: 'locales'),
  currencies(value: 'currencies'),
  taxClasses(value: 'tax_classes'),
  taxBasis(value: 'tax_basis');

  const MarketReadinessCheckId({required this.value});

  final String value;

  String toJson() => value;
}
