part of '../../enums.dart';

enum Collection {
    products(value: 'products');

    const Collection({
        required this.value
    });

    final String value;

    String toJson() => value;
}