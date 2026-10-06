part of '../../enums.dart';

enum ChannelUnassignedPolicy {
  all(value: 'all'),
  assignedOnly(value: 'assigned_only');

  const ChannelUnassignedPolicy({required this.value});

  final String value;

  String toJson() => value;
}
