part of '../../enums.dart';

enum ColumnBooleanStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnBooleanStatus({required this.value});

  final String value;

  String toJson() => value;
}
