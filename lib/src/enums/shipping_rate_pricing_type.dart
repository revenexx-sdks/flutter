part of '../../enums.dart';

enum ShippingRatePricingType {
    fixed(value: 'fixed'),
    free(value: 'free'),
    matrix(value: 'matrix');

    const ShippingRatePricingType({
        required this.value
    });

    final String value;

    String toJson() => value;
}