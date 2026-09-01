part of '../../enums.dart';

enum InventoryVocabularyDefaultTone {
  neutral(value: 'neutral'),
  info(value: 'info'),
  success(value: 'success'),
  warning(value: 'warning'),
  danger(value: 'danger');

  const InventoryVocabularyDefaultTone({required this.value});

  final String value;

  String toJson() => value;
}
