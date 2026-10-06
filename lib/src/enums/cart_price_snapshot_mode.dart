part of '../../enums.dart';

enum CartPriceSnapshotMode {
  snapshot(value: 'snapshot'),
  live(value: 'live');

  const CartPriceSnapshotMode({required this.value});

  final String value;

  String toJson() => value;
}
