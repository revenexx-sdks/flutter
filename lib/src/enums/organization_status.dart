part of '../../enums.dart';

enum OrganizationStatus {
    active(value: 'active'),
    blocked(value: 'blocked');

    const OrganizationStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}