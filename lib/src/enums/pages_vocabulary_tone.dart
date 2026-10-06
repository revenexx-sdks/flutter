part of '../../enums.dart';

enum PagesVocabularyTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const PagesVocabularyTone({required this.value});

  final String value;

  String toJson() => value;
}
