part of '../../models.dart';

/// 
class PaymentTransitionRequest implements Model {
    /// The operator's own words for why. Kept on the payment (`metadata.cancel_reason` / `metadata.refund_reason`) AND handed to the provider's own cancellation or refund reason field, so it is readable in the PSP's dashboard too. Trimmed and cut at 500 characters.
    final String? reason;

    PaymentTransitionRequest({
        this.reason,
    });

    factory PaymentTransitionRequest.fromMap(Map<String, dynamic> map) {
        return PaymentTransitionRequest(
            reason: map['reason']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "reason": reason,
        };
    }
}
