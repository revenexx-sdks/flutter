part of '../../enums.dart';

enum ChannelUnresolvedReason {
  channelRequired(value: 'channel_required'),
  noDefaultChannel(value: 'no_default_channel'),
  unknownChannel(value: 'unknown_channel'),
  channelInactive(value: 'channel_inactive');

  const ChannelUnresolvedReason({required this.value});

  final String value;

  String toJson() => value;
}
