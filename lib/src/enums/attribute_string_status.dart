part of '../../enums.dart';

enum AttributeStringStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeStringStatus({required this.value});

  final String value;

  String toJson() => value;
}
