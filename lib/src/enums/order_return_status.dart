part of '../../enums.dart';

enum OrderReturnStatus {
    registered(value: 'registered'),
    received(value: 'received'),
    completed(value: 'completed'),
    rejected(value: 'rejected');

    const OrderReturnStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}