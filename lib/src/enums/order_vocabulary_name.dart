part of '../../enums.dart';

enum OrderVocabularyName {
    cancellationScopes(value: 'cancellation-scopes'),
    commentVisibilities(value: 'comment-visibilities'),
    fulfillmentStatuses(value: 'fulfillment-statuses'),
    itemTypes(value: 'item-types'),
    paymentStatuses(value: 'payment-statuses'),
    returnResolutions(value: 'return-resolutions'),
    returnStatuses(value: 'return-statuses'),
    statuses(value: 'statuses');

    const OrderVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}