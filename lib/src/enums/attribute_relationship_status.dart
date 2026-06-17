part of '../../enums.dart';

enum AttributeRelationshipStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const AttributeRelationshipStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}