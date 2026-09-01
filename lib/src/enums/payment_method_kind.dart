part of '../../enums.dart';

enum PaymentMethodKind {
  selfManaged(value: 'self_managed'),
  psp(value: 'psp');

  const PaymentMethodKind({required this.value});

  final String value;

  String toJson() => value;
}
