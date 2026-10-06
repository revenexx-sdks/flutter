part of '../../enums.dart';

enum MarketLocaleGranularity {
  regional(value: 'regional'),
  language(value: 'language');

  const MarketLocaleGranularity({required this.value});

  final String value;

  String toJson() => value;
}
