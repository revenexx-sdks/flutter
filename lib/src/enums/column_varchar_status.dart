part of '../../enums.dart';

enum ColumnVarcharStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnVarcharStatus({required this.value});

  final String value;

  String toJson() => value;
}
