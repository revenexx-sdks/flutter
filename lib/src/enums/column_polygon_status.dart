part of '../../enums.dart';

enum ColumnPolygonStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnPolygonStatus({required this.value});

  final String value;

  String toJson() => value;
}
