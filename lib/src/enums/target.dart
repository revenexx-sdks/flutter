part of '../../enums.dart';

enum Target {
  organizations(value: 'organizations');

  const Target({required this.value});

  final String value;

  String toJson() => value;
}
