part of '../../enums.dart';

enum ProductGridColumnSource {
    column(value: 'column'),
    attribute(value: 'attribute'),
    resolved(value: 'resolved');

    const ProductGridColumnSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}