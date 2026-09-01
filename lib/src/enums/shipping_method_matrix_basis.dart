part of '../../enums.dart';

enum ShippingMethodMatrixBasis {
  weight(value: 'weight'),
  quantity(value: 'quantity'),
  orderValue(value: 'order_value'),
  attribute(value: 'attribute');

  const ShippingMethodMatrixBasis({required this.value});

  final String value;

  String toJson() => value;
}
