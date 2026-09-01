part of '../../enums.dart';

enum ChannelContextSource {
  body(value: 'body'),
  query(value: 'query'),
  header(value: 'header'),
  jwt(value: 'jwt'),
  xdefault(value: 'default');

  const ChannelContextSource({required this.value});

  final String value;

  String toJson() => value;
}
