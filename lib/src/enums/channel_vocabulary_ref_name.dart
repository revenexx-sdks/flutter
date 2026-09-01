part of '../../enums.dart';

enum ChannelVocabularyRefName {
    statuses(value: 'statuses'),
    types(value: 'types'),
    unassignedVisibility(value: 'unassigned-visibility');

    const ChannelVocabularyRefName({
        required this.value
    });

    final String value;

    String toJson() => value;
}