part of '../../enums.dart';

enum ResourceType {
  template(value: 'template'),
  layout(value: 'layout'),
  suppression(value: 'suppression');

  const ResourceType({required this.value});

  final String value;

  String toJson() => value;
}
