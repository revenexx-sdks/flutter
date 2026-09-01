part of '../../enums.dart';

enum PaymentFeeType {
  none(value: 'none'),
  fixed(value: 'fixed'),
  percent(value: 'percent');

  const PaymentFeeType({required this.value});

  final String value;

  String toJson() => value;
}
