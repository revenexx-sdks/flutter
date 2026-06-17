part of '../../enums.dart';

enum CartExportFormat {
    json(value: 'json'),
    csv(value: 'csv');

    const CartExportFormat({
        required this.value
    });

    final String value;

    String toJson() => value;
}