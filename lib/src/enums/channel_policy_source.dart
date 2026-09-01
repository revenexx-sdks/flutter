part of '../../enums.dart';

enum ChannelPolicySource {
    tenant(value: 'tenant'),
    channel(value: 'channel');

    const ChannelPolicySource({
        required this.value
    });

    final String value;

    String toJson() => value;
}