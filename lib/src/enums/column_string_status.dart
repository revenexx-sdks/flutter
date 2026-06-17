part of '../../enums.dart';

enum ColumnStringStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnStringStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}