part of '../../enums.dart';

enum MarketReadinessReportWarnings {
  locales(value: 'locales'),
  currencies(value: 'currencies'),
  taxClasses(value: 'tax_classes'),
  taxBasis(value: 'tax_basis');

  const MarketReadinessReportWarnings({required this.value});

  final String value;

  String toJson() => value;
}
