part of '../../enums.dart';

enum ColumnEmailStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnEmailStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}