part of '../../enums.dart';

enum CartVocabularyTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const CartVocabularyTone({required this.value});

  final String value;

  String toJson() => value;
}
