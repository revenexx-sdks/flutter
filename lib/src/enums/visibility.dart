part of '../../enums.dart';

enum Visibility {
  public(value: 'public'),
  private(value: 'private');

  const Visibility({required this.value});

  final String value;

  String toJson() => value;
}
