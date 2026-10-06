part of '../../enums.dart';

enum ShippingVocabularyTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const ShippingVocabularyTone({required this.value});

  final String value;

  String toJson() => value;
}
