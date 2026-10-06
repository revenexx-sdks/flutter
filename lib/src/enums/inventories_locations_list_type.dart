part of '../../enums.dart';

enum InventoriesLocationsListType {
  warehouse(value: 'warehouse'),
  store(value: 'store'),
  dropship(value: 'dropship'),
  virtual(value: 'virtual');

  const InventoriesLocationsListType({required this.value});

  final String value;

  String toJson() => value;
}
