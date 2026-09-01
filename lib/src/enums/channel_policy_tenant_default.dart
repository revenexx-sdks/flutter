part of '../../enums.dart';

enum ChannelPolicyTenantDefault {
  all(value: 'all'),
  assignedOnly(value: 'assigned_only');

  const ChannelPolicyTenantDefault({required this.value});

  final String value;

  String toJson() => value;
}
