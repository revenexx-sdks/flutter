part of '../../enums.dart';

enum ShippingCarriersListStatus {
  active(value: 'active'),
  paused(value: 'paused'),
  retired(value: 'retired');

  const ShippingCarriersListStatus({required this.value});

  final String value;

  String toJson() => value;
}
