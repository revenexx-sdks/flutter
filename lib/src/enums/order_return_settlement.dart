part of '../../enums.dart';

enum OrderReturnSettlement {
  refund(value: 'refund'),
  partialRefund(value: 'partial_refund'),
  replacement(value: 'replacement'),
  repair(value: 'repair'),
  storeCredit(value: 'store_credit');

  const OrderReturnSettlement({required this.value});

  final String value;

  String toJson() => value;
}
