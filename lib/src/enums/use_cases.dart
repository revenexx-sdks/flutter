part of '../../enums.dart';

enum UseCases {
  starter(value: 'starter'),
  databases(value: 'databases'),
  ai(value: 'ai'),
  messaging(value: 'messaging'),
  utilities(value: 'utilities'),
  devTools(value: 'dev-tools'),
  auth(value: 'auth');

  const UseCases({required this.value});

  final String value;

  String toJson() => value;
}
