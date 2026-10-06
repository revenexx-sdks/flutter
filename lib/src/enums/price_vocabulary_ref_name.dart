part of '../../enums.dart';

enum PriceVocabularyRefName {
  listStatuses(value: 'list-statuses'),
  priceTypes(value: 'price-types'),
  taxBases(value: 'tax-bases');

  const PriceVocabularyRefName({required this.value});

  final String value;

  String toJson() => value;
}
