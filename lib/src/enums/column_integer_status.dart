part of '../../enums.dart';

enum ColumnIntegerStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnIntegerStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}