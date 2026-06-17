part of '../../enums.dart';

enum ColumnDatetimeStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnDatetimeStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}