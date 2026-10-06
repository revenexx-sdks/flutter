part of '../../enums.dart';

enum ContactStatus {
  invited(value: 'invited'),
  active(value: 'active'),
  blocked(value: 'blocked');

  const ContactStatus({required this.value});

  final String value;

  String toJson() => value;
}
