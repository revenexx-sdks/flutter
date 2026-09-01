part of '../../enums.dart';

enum PriceListTiebreak {
    lowestPrice(value: 'lowest_price'),
    highestPrice(value: 'highest_price'),
    newest(value: 'newest'),
    code(value: 'code');

    const PriceListTiebreak({
        required this.value
    });

    final String value;

    String toJson() => value;
}