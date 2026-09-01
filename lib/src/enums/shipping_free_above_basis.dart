part of '../../enums.dart';

enum ShippingFreeAboveBasis {
    net(value: 'net'),
    gross(value: 'gross');

    const ShippingFreeAboveBasis({
        required this.value
    });

    final String value;

    String toJson() => value;
}