part of '../../enums.dart';

enum ShippingTrackingCarrierStatus {
  active(value: 'active'),
  paused(value: 'paused'),
  retired(value: 'retired');

  const ShippingTrackingCarrierStatus({required this.value});

  final String value;

  String toJson() => value;
}
