part of '../../enums.dart';

enum MarketsListStatus {
    active(value: 'active'),
    inactive(value: 'inactive');

    const MarketsListStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}