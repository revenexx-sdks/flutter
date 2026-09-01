part of '../../enums.dart';

enum MarketLocaleFallback {
  language(value: 'language'),
  defaultLocale(value: 'default_locale'),
  none(value: 'none');

  const MarketLocaleFallback({required this.value});

  final String value;

  String toJson() => value;
}
