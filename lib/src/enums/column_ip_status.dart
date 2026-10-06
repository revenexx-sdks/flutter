part of '../../enums.dart';

enum ColumnIpStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnIpStatus({required this.value});

  final String value;

  String toJson() => value;
}
