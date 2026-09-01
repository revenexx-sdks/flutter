part of '../../enums.dart';

enum ShippingVocabulariesGetName {
    carrierStatuses(value: 'carrier-statuses'),
    matrixBases(value: 'matrix-bases'),
    pricingTypes(value: 'pricing-types'),
    serviceLevels(value: 'service-levels'),
    weightUnits(value: 'weight-units');

    const ShippingVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}