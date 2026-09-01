part of '../../enums.dart';

enum AttributeIpStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeIpStatus({required this.value});

  final String value;

  String toJson() => value;
}
