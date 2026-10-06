part of '../../enums.dart';

enum ColumnLongtextStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const ColumnLongtextStatus({required this.value});

  final String value;

  String toJson() => value;
}
