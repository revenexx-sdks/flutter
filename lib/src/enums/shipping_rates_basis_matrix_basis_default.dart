part of '../../enums.dart';

enum ShippingRatesBasisMatrixBasisDefault {
  weight(value: 'weight'),
  quantity(value: 'quantity'),
  orderValue(value: 'order_value');

  const ShippingRatesBasisMatrixBasisDefault({required this.value});

  final String value;

  String toJson() => value;
}
