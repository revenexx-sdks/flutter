part of '../../enums.dart';

enum OrderCancellationScope {
  order(value: 'order'),
  items(value: 'items');

  const OrderCancellationScope({required this.value});

  final String value;

  String toJson() => value;
}
