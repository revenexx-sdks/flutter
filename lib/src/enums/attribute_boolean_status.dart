part of '../../enums.dart';

enum AttributeBooleanStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeBooleanStatus({required this.value});

  final String value;

  String toJson() => value;
}
