part of '../../enums.dart';

enum AttributeEnumStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeEnumStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}