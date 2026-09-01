part of '../../enums.dart';

enum PriceEntriesAdjustResponseRoundingMode {
    halfUp(value: 'half_up'),
    halfEven(value: 'half_even'),
    up(value: 'up'),
    down(value: 'down');

    const PriceEntriesAdjustResponseRoundingMode({
        required this.value
    });

    final String value;

    String toJson() => value;
}