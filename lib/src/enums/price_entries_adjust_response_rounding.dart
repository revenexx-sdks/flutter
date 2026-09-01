part of '../../enums.dart';

enum PriceEntriesAdjustResponseRounding {
    exact(value: 'exact'),
    whole(value: 'whole'),
    ending99(value: 'ending_99'),
    ending95(value: 'ending_95'),
    ending50(value: 'ending_50');

    const PriceEntriesAdjustResponseRounding({
        required this.value
    });

    final String value;

    String toJson() => value;
}