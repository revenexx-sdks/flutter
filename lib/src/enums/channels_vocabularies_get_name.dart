part of '../../enums.dart';

enum ChannelsVocabulariesGetName {
    statuses(value: 'statuses'),
    types(value: 'types'),
    unassignedVisibility(value: 'unassigned-visibility');

    const ChannelsVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}