part of '../../enums.dart';

enum AttributeUrlStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeUrlStatus({required this.value});

  final String value;

  String toJson() => value;
}
