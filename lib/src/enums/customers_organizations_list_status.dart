part of '../../enums.dart';

enum CustomersOrganizationsListStatus {
    active(value: 'active'),
    blocked(value: 'blocked');

    const CustomersOrganizationsListStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}