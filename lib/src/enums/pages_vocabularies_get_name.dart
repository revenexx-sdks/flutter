part of '../../enums.dart';

enum PagesVocabulariesGetName {
  editStateStatuses(value: 'edit-state-statuses'),
  pageStatuses(value: 'page-statuses'),
  translationStatuses(value: 'translation-statuses');

  const PagesVocabulariesGetName({required this.value});

  final String value;

  String toJson() => value;
}
