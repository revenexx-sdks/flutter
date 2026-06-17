part of '../../enums.dart';

enum PriceListStatus {
    active(value: 'active'),
    inactive(value: 'inactive');

    const PriceListStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}