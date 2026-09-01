part of '../../enums.dart';

enum Name {
    ioApplyModes(value: 'io-apply-modes'),
    ioDirections(value: 'io-directions'),
    ioEntities(value: 'io-entities'),
    ioFormats(value: 'io-formats'),
    itemTypes(value: 'item-types'),
    statuses(value: 'statuses');

    const Name({
        required this.value
    });

    final String value;

    String toJson() => value;
}