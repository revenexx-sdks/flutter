part of '../../enums.dart';

enum ContactRole {
    buyer(value: 'buyer'),
    approver(value: 'approver'),
    admin(value: 'admin'),
    requester(value: 'requester');

    const ContactRole({
        required this.value
    });

    final String value;

    String toJson() => value;
}