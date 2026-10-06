part of '../../enums.dart';

enum ContactUpdateRequestRegistrationStatus {
  pending(value: 'pending'),
  approved(value: 'approved');

  const ContactUpdateRequestRegistrationStatus({required this.value});

  final String value;

  String toJson() => value;
}
