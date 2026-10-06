part of '../../enums.dart';

enum ContactCreateRequestRegistrationStatus {
  pending(value: 'pending'),
  approved(value: 'approved');

  const ContactCreateRequestRegistrationStatus({required this.value});

  final String value;

  String toJson() => value;
}
