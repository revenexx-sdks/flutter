part of '../../enums.dart';

enum CartIoEntity {
    carts(value: 'carts'),
    cartItems(value: 'cart_items');

    const CartIoEntity({
        required this.value
    });

    final String value;

    String toJson() => value;
}