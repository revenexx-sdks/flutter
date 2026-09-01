part of '../../enums.dart';

enum AttributeValueBucket {
    common(value: 'common'),
    localeSpecific(value: 'locale_specific'),
    channelSpecific(value: 'channel_specific'),
    channelLocaleSpecific(value: 'channel_locale_specific');

    const AttributeValueBucket({
        required this.value
    });

    final String value;

    String toJson() => value;
}