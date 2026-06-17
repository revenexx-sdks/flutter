part of '../../enums.dart';

enum ColumnEnumStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnEnumStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}