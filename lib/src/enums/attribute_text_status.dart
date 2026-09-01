part of '../../enums.dart';

enum AttributeTextStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeTextStatus({required this.value});

  final String value;

  String toJson() => value;
}
