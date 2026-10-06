part of '../../enums.dart';

enum PriceRoundingMode {
  halfUp(value: 'half_up'),
  halfEven(value: 'half_even'),
  up(value: 'up'),
  down(value: 'down');

  const PriceRoundingMode({required this.value});

  final String value;

  String toJson() => value;
}
