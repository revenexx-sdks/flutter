part of '../../enums.dart';

enum CartItemType {
  product(value: 'product'),
  configuration(value: 'configuration'),
  custom(value: 'custom');

  const CartItemType({required this.value});

  final String value;

  String toJson() => value;
}
