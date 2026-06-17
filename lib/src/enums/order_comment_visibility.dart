part of '../../enums.dart';

enum OrderCommentVisibility {
    internal(value: 'internal'),
    customer(value: 'customer');

    const OrderCommentVisibility({
        required this.value
    });

    final String value;

    String toJson() => value;
}