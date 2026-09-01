part of '../../enums.dart';

enum StockMovementType {
  inbound(value: 'inbound'),
  adjustment(value: 'adjustment'),
  reserve(value: 'reserve'),
  release(value: 'release'),
  shipment(value: 'shipment'),
  restock(value: 'restock');

  const StockMovementType({required this.value});

  final String value;

  String toJson() => value;
}
