part of '../../enums.dart';

enum RegistrationStatus {
  pending(value: 'pending'),
  approved(value: 'approved'),
  rejected(value: 'rejected');

  const RegistrationStatus({required this.value});

  final String value;

  String toJson() => value;
}
