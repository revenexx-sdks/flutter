part of '../../enums.dart';

enum PriceListTaxBasis {
    net(value: 'net'),
    gross(value: 'gross');

    const PriceListTaxBasis({
        required this.value
    });

    final String value;

    String toJson() => value;
}