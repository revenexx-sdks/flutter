part of '../../enums.dart';

enum ColumnFloatStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnFloatStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}