part of '../../enums.dart';

enum PriceEndingRule {
  exact(value: 'exact'),
  whole(value: 'whole'),
  ending99(value: 'ending_99'),
  ending95(value: 'ending_95'),
  ending50(value: 'ending_50');

  const PriceEndingRule({required this.value});

  final String value;

  String toJson() => value;
}
