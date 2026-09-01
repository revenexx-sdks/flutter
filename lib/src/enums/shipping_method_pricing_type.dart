part of '../../enums.dart';

enum ShippingMethodPricingType {
  fixed(value: 'fixed'),
  free(value: 'free'),
  matrix(value: 'matrix');

  const ShippingMethodPricingType({required this.value});

  final String value;

  String toJson() => value;
}
