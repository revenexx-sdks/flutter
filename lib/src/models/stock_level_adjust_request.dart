part of '../../models.dart';

/// Correct ONE stock row. The row already knows its location and its item, so a caller owes only the signed delta and a reason — which is exactly what an operator can be asked for in a dialog.
class StockLevelAdjustRequest implements Model {
  /// The SIGNED correction to this row's `on_hand`: −3 writes off three, +3 finds three. A delta, not the new balance. Zero is refused (400). A correction that would take `on_hand` below zero is a 422 the database insists on; one that would take it below this row's own `reserved` is a 422 the `allow_negative_stock` setting can permit.
  final double quantity;

  /// Why this row is being corrected, written onto the ledger booking. Owed unless `movement_reason_required` is 'none'.
  final String? reason;

  StockLevelAdjustRequest({
    required this.quantity,
    this.reason,
  });

  factory StockLevelAdjustRequest.fromMap(Map<String, dynamic> map) {
    return StockLevelAdjustRequest(
      quantity: map['quantity'].toDouble(),
      reason: map['reason']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "quantity": quantity,
      "reason": reason,
    };
  }
}
