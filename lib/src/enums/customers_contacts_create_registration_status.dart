part of '../../enums.dart';

enum CustomersContactsCreateRegistrationStatus {
    pending(value: 'pending'),
    approved(value: 'approved');

    const CustomersContactsCreateRegistrationStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}