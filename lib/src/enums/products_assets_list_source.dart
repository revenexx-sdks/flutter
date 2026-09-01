part of '../../enums.dart';

enum ProductsAssetsListSource {
    storage(value: 'storage'),
    xexternal(value: 'external');

    const ProductsAssetsListSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}