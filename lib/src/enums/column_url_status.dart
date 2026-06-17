part of '../../enums.dart';

enum ColumnUrlStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnUrlStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}