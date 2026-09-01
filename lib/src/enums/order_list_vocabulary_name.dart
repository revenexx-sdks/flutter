part of '../../enums.dart';

enum OrderListVocabularyName {
    kinds(value: 'kinds');

    const OrderListVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}