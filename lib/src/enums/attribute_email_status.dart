part of '../../enums.dart';

enum AttributeEmailStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeEmailStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}