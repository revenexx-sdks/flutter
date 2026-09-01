part of '../../enums.dart';

enum AttributePointStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributePointStatus({required this.value});

  final String value;

  String toJson() => value;
}
