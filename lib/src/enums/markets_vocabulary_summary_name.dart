part of '../../enums.dart';

enum MarketsVocabularySummaryName {
  marketStatuses(value: 'market-statuses');

  const MarketsVocabularySummaryName({required this.value});

  final String value;

  String toJson() => value;
}
