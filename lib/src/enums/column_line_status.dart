part of '../../enums.dart';

enum ColumnLineStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnLineStatus({required this.value});

  final String value;

  String toJson() => value;
}
