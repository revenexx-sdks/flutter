part of '../../enums.dart';

enum PricesVocabulariesGetName {
  listStatuses(value: 'list-statuses'),
  priceTypes(value: 'price-types'),
  taxBases(value: 'tax-bases');

  const PricesVocabulariesGetName({required this.value});

  final String value;

  String toJson() => value;
}
