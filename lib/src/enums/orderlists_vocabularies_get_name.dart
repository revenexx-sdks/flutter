part of '../../enums.dart';

enum OrderlistsVocabulariesGetName {
    kinds(value: 'kinds');

    const OrderlistsVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}