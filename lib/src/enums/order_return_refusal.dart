part of '../../enums.dart';

enum OrderReturnRefusal {
    wearAndTear(value: 'wear_and_tear'),
    notReturnable(value: 'not_returnable');

    const OrderReturnRefusal({
        required this.value
    });

    final String value;

    String toJson() => value;
}