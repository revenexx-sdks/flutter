part of '../../enums.dart';

enum Collection {
    greetings(value: 'greetings'),
    products(value: 'products');

    const Collection({
        required this.value
    });

    final String value;

    String toJson() => value;
}