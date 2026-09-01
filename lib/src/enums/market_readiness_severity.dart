part of '../../enums.dart';

enum MarketReadinessSeverity {
    blocking(value: 'blocking'),
    warning(value: 'warning'),
    info(value: 'info');

    const MarketReadinessSeverity({
        required this.value
    });

    final String value;

    String toJson() => value;
}