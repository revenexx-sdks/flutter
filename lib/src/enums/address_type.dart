part of '../../enums.dart';

enum AddressType {
    billing(value: 'billing'),
    shipping(value: 'shipping');

    const AddressType({
        required this.value
    });

    final String value;

    String toJson() => value;
}