part of '../../enums.dart';

enum AttributeLongtextStatus {
  available(value: 'available'),
  processing(value: 'processing'),
  deleting(value: 'deleting'),
  stuck(value: 'stuck'),
  failed(value: 'failed');

  const AttributeLongtextStatus({required this.value});

  final String value;

  String toJson() => value;
}
