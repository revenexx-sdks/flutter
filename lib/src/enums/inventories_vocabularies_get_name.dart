part of '../../enums.dart';

enum InventoriesVocabulariesGetName {
    locationTypes(value: 'location-types'),
    movementTypes(value: 'movement-types'),
    reservationStatuses(value: 'reservation-statuses');

    const InventoriesVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}