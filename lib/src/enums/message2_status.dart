part of '../../enums.dart';

enum Message2Status {
  draft(value: 'draft'),
  processing(value: 'processing'),
  scheduled(value: 'scheduled'),
  sent(value: 'sent'),
  failed(value: 'failed');

  const Message2Status({required this.value});

  final String value;

  String toJson() => value;
}
