part of '../../enums.dart';

enum ChannelStatus {
  active(value: 'active'),
  inactive(value: 'inactive');

  const ChannelStatus({required this.value});

  final String value;

  String toJson() => value;
}
