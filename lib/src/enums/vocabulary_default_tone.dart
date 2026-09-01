part of '../../enums.dart';

enum VocabularyDefaultTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const VocabularyDefaultTone({required this.value});

  final String value;

  String toJson() => value;
}
