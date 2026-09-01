part of '../../enums.dart';

enum PaymentsVocabulariesGetName {
    dunningStages(value: 'dunning-stages'),
    feeTypes(value: 'fee-types'),
    methodKinds(value: 'method-kinds'),
    statuses(value: 'statuses');

    const PaymentsVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}