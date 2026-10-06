part of '../../enums.dart';

enum MarketReadinessReportBlocking {
  locales(value: 'locales'),
  currencies(value: 'currencies'),
  taxClasses(value: 'tax_classes'),
  taxBasis(value: 'tax_basis');

  const MarketReadinessReportBlocking({required this.value});

  final String value;

  String toJson() => value;
}
