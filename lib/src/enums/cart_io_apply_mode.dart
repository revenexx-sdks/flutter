part of '../../enums.dart';

enum CartIoApplyMode {
  insert(value: 'insert'),
  append(value: 'append'),
  replace(value: 'replace');

  const CartIoApplyMode({required this.value});

  final String value;

  String toJson() => value;
}
