part of '../../enums.dart';

enum AttributeIntegerStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeIntegerStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}