part of '../../enums.dart';

enum OrderFulfillmentStatus {
  unfulfilled(value: 'unfulfilled'),
  partial(value: 'partial'),
  fulfilled(value: 'fulfilled');

  const OrderFulfillmentStatus({required this.value});

  final String value;

  String toJson() => value;
}
