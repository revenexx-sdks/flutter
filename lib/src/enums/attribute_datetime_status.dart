part of '../../enums.dart';

enum AttributeDatetimeStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeDatetimeStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}