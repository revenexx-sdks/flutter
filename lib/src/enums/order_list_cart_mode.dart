part of '../../enums.dart';

enum OrderListCartMode {
  append(value: 'append'),
  replace(value: 'replace');

  const OrderListCartMode({required this.value});

  final String value;

  String toJson() => value;
}
