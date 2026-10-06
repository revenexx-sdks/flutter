part of '../../enums.dart';

enum InventoriesReservationsListStatus {
  active(value: 'active'),
  released(value: 'released'),
  committed(value: 'committed');

  const InventoriesReservationsListStatus({required this.value});

  final String value;

  String toJson() => value;
}
