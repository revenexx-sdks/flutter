part of '../../enums.dart';

enum MarketsVocabularyName {
    marketStatuses(value: 'market-statuses');

    const MarketsVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}