part of '../../enums.dart';

enum ChannelVocabularyName {
  statuses(value: 'statuses'),
  types(value: 'types'),
  unassignedVisibility(value: 'unassigned-visibility');

  const ChannelVocabularyName({required this.value});

  final String value;

  String toJson() => value;
}
