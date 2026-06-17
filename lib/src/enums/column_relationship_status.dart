part of '../../enums.dart';

enum ColumnRelationshipStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnRelationshipStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}