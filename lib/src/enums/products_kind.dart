part of '../../enums.dart';

enum ProductsKind {
    simple(value: 'simple'),
    model(value: 'model'),
    variant(value: 'variant');

    const ProductsKind({
        required this.value
    });

    final String value;

    String toJson() => value;
}