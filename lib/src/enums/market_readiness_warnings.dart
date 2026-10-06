part of '../../enums.dart';

enum MarketReadinessWarnings {
  locales(value: 'locales'),
  currencies(value: 'currencies'),
  taxClasses(value: 'tax_classes'),
  taxBasis(value: 'tax_basis');

  const MarketReadinessWarnings({required this.value});

  final String value;

  String toJson() => value;
}
