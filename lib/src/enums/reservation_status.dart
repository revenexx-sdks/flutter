part of '../../enums.dart';

enum ReservationStatus {
  active(value: 'active'),
  released(value: 'released'),
  committed(value: 'committed');

  const ReservationStatus({required this.value});

  final String value;

  String toJson() => value;
}
