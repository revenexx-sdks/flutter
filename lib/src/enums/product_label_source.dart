part of '../../enums.dart';

enum ProductLabelSource {
    common(value: 'common'),
    localeSpecific(value: 'locale_specific'),
    channelSpecific(value: 'channel_specific'),
    channelLocaleSpecific(value: 'channel_locale_specific'),
    sku(value: 'sku');

    const ProductLabelSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}