part of '../../enums.dart';

enum EntityType {
  product(value: 'product'),
  referenceEntity(value: 'reference_entity'),
  asset(value: 'asset'),
  category(value: 'category');

  const EntityType({required this.value});

  final String value;

  String toJson() => value;
}
