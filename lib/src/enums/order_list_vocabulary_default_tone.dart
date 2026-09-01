part of '../../enums.dart';

enum OrderListVocabularyDefaultTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const OrderListVocabularyDefaultTone({required this.value});

  final String value;

  String toJson() => value;
}
