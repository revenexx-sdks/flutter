part of '../../enums.dart';

enum AttributeVarcharStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeVarcharStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}