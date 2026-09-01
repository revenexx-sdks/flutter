part of '../../enums.dart';

enum MarketReadinessBlocking {
    locales(value: 'locales'),
    currencies(value: 'currencies'),
    taxClasses(value: 'tax_classes'),
    taxBasis(value: 'tax_basis');

    const MarketReadinessBlocking({
        required this.value
    });

    final String value;

    String toJson() => value;
}