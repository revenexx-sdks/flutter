part of '../../enums.dart';

enum ColumnTextStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnTextStatus({required this.value});

  final String value;

  String toJson() => value;
}
