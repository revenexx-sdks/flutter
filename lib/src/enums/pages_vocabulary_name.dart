part of '../../enums.dart';

enum PagesVocabularyName {
  editStateStatuses(value: 'edit-state-statuses'),
  pageStatuses(value: 'page-statuses'),
  translationStatuses(value: 'translation-statuses');

  const PagesVocabularyName({required this.value});

  final String value;

  String toJson() => value;
}
