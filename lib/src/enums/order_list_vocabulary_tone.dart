part of '../../enums.dart';

enum OrderListVocabularyTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const OrderListVocabularyTone({required this.value});

  final String value;

  String toJson() => value;
}
