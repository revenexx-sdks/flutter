part of '../../enums.dart';

enum OrderItemType {
  product(value: 'product'),
  configuration(value: 'configuration'),
  custom(value: 'custom');

  const OrderItemType({required this.value});

  final String value;

  String toJson() => value;
}
