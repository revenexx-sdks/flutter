part of '../../enums.dart';

enum CartVocabularyName {
    ioApplyModes(value: 'io-apply-modes'),
    ioDirections(value: 'io-directions'),
    ioEntities(value: 'io-entities'),
    ioFormats(value: 'io-formats'),
    itemTypes(value: 'item-types'),
    statuses(value: 'statuses');

    const CartVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}