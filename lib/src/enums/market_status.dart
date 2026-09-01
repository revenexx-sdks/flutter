part of '../../enums.dart';

enum MarketStatus {
  active(value: 'active'),
  inactive(value: 'inactive');

  const MarketStatus({required this.value});

  final String value;

  String toJson() => value;
}
