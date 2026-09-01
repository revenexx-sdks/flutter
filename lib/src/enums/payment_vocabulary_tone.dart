part of '../../enums.dart';

enum PaymentVocabularyTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const PaymentVocabularyTone({required this.value});

  final String value;

  String toJson() => value;
}
