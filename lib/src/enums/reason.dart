part of '../../enums.dart';

enum Reason {
  hardBounce(value: 'hard_bounce'),
  complaint(value: 'complaint'),
  unsubscribe(value: 'unsubscribe'),
  manual(value: 'manual');

  const Reason({required this.value});

  final String value;

  String toJson() => value;
}
