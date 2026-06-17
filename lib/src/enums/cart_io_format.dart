part of '../../enums.dart';

enum CartIoFormat {
    json(value: 'json'),
    csv(value: 'csv');

    const CartIoFormat({
        required this.value
    });

    final String value;

    String toJson() => value;
}