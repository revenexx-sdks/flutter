part of '../../enums.dart';

enum AttributeLineStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeLineStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}