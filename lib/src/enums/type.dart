part of '../../enums.dart';

enum Type {
  commit(value: 'commit'),
  branch(value: 'branch'),
  tag(value: 'tag');

  const Type({required this.value});

  final String value;

  String toJson() => value;
}
