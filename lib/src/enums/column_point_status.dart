part of '../../enums.dart';

enum ColumnPointStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnPointStatus({required this.value});

  final String value;

  String toJson() => value;
}
