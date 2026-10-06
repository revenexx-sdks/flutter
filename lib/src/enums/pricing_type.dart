part of '../../enums.dart';

enum PricingType {
  fixed(value: 'fixed'),
  free(value: 'free'),
  matrix(value: 'matrix');

  const PricingType({required this.value});

  final String value;

  String toJson() => value;
}
