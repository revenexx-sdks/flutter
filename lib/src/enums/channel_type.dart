part of '../../enums.dart';

enum ChannelType {
    storefront(value: 'storefront'),
    punchout(value: 'punchout'),
    marketplace(value: 'marketplace'),
    api(value: 'api'),
    pos(value: 'pos');

    const ChannelType({
        required this.value
    });

    final String value;

    String toJson() => value;
}