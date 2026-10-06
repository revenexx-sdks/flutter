part of '../../enums.dart';

enum CartStatus {
  active(value: 'active'),
  abandoned(value: 'abandoned'),
  ordered(value: 'ordered'),
  merged(value: 'merged');

  const CartStatus({required this.value});

  final String value;

  String toJson() => value;
}
