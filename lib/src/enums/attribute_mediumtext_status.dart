part of '../../enums.dart';

enum AttributeMediumtextStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeMediumtextStatus({required this.value});

  final String value;

  String toJson() => value;
}
