part of '../../enums.dart';

enum ColumnMediumtextStatus {
    available(value: 'available'),
    processing(value: 'processing'),
    deleting(value: 'deleting'),
    stuck(value: 'stuck'),
    failed(value: 'failed');

    const ColumnMediumtextStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}