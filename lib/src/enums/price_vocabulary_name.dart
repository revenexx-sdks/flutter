part of '../../enums.dart';

enum PriceVocabularyName {
    listStatuses(value: 'list-statuses'),
    priceTypes(value: 'price-types'),
    taxBases(value: 'tax-bases');

    const PriceVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}