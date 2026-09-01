part of '../../enums.dart';

enum ContactRegistrationStatus {
  pending(value: 'pending'),
  approved(value: 'approved'),
  rejected(value: 'rejected');

  const ContactRegistrationStatus({required this.value});

  final String value;

  String toJson() => value;
}
