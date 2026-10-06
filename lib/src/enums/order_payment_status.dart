part of '../../enums.dart';

enum OrderPaymentStatus {
  open(value: 'open'),
  pending(value: 'pending'),
  authorized(value: 'authorized'),
  paid(value: 'paid'),
  partiallyPaid(value: 'partially_paid'),
  refunded(value: 'refunded'),
  failed(value: 'failed');

  const OrderPaymentStatus({required this.value});

  final String value;

  String toJson() => value;
}
