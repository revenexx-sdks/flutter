part of '../../enums.dart';

enum CartIoDirection {
    ximport(value: 'import'),
    xexport(value: 'export');

    const CartIoDirection({
        required this.value
    });

    final String value;

    String toJson() => value;
}