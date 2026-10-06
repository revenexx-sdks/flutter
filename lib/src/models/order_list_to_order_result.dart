part of '../../models.dart';

///
class OrderListToOrderResult implements Model {
  /// The list that was ordered. Unchanged by the call — the list stays, so it can be ordered again next month.
  final String? list_id;

  /// The orders app's answer, verbatim and unreshaped — the whole created order, whose shape is the orders app's own `Order` schema (GET /v1/orders/{id}) and is deliberately not restated here, because a copy would be the thing that goes stale. `order_id`, `order_number` and `status` are lifted out of it for a client that needs nothing else.
  final Map? order;

  /// The order the orders app created. Null only when that app answered without one, which is a fault worth reporting rather than a normal outcome.
  final String? order_id;

  /// The order number a human quotes, drawn from the tenant's order range by the orders app. It is NOT the id: every orders route addresses an order by uuid.
  final String? order_number;

  /// Positions handed to the orders app — the list's count minus `skipped`.
  final int? positions;

  /// Positions left out because the catalogue no longer knows their article. Only ever non-empty when 'on_missing_article' is 'skip'.
  final List<OrderListSkippedPosition>? skipped;

  /// Where the new order stands, as the orders app decided: 'placed' when it was accepted outright, 'pending' when it awaits approval — a contact holding only orders.request, or an order above the tenant's approval threshold. This app does not choose it and cannot override it.
  final String? status;

  OrderListToOrderResult({
    this.list_id,
    this.order,
    this.order_id,
    this.order_number,
    this.positions,
    this.skipped,
    this.status,
  });

  factory OrderListToOrderResult.fromMap(Map<String, dynamic> map) {
    return OrderListToOrderResult(
      list_id: map['list_id']?.toString(),
      order: map['order'],
      order_id: map['order_id']?.toString(),
      order_number: map['order_number']?.toString(),
      positions: map['positions'],
      skipped: map['skipped'] != null
          ? List<OrderListSkippedPosition>.from(
              map['skipped'].map((p) => OrderListSkippedPosition.fromMap(p)))
          : null,
      status: map['status']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "list_id": list_id,
      "order": order,
      "order_id": order_id,
      "order_number": order_number,
      "positions": positions,
      "skipped": skipped?.map((p) => p.toMap()).toList(),
      "status": status,
    };
  }
}
