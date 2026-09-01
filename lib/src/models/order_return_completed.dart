part of '../../models.dart';

/// The completed return plus the restock report. Restocking itself is an explicit inventories.restock call by the orchestrator — this app books quantity_returned and says what came back, it does not write another app's stock.
class OrderReturnCompleted implements Model {
    /// When the return was settled, stamped by the SERVER. Never taken from the body: a client clock records when a client thinks it acted, not when the goods were booked.
    final String? completed_at;

    /// When the return row was written.
    final String? created_at;

    /// Primary key of the return. The {rid} segment of the return routes.
    final String? id;

    /// Free-form data for the caller — the returns portal's own reference. Stored and returned untouched.
    final Map<String, dynamic>? metadata;

    /// The RETURN number — drawn from the tenant's return range, unique per tenant, and a third series alongside orders and delivery notes. What the customer writes on the parcel.
    final String? number;

    /// The order the goods are coming back from. A return of another order is a 404 on these routes, not a cross-order write.
    final String? order_id;

    /// The positions and quantities this return covers, fixed when it was registered and guarded against the shipped-but-not-yet-returned quantity of each. Entries flagged restock are what the completion reports back for the inventories call.
    final List<OrderReturnedPosition>? positions;

    /// Why the goods are coming back, free text as the customer or the desk stated it. Also what /reject stores when it is given no resolution out of the published set.
    final String? reason;

    /// When the goods physically arrived back. Null until POST …/receive — and null forever on a return that was completed straight out of registered, which is allowed.
    final String? received_at;

    /// When the return was announced. Defaults to now.
    final String? registered_at;

    /// When the return was refused. Null unless it was.
    final String? rejected_at;

    /// How it ended, in one of the words this app publishes — the settlement words on a completion (refund, partial_refund, replacement, repair, store_credit), the refusal words on a rejection (wear_and_tear, not_returnable); GET /orders/vocabularies/return-resolutions carries both sets with the stage that accepts each. The column carries no database constraint; the ROUTES enforce the set, which is what stopped a client settling returns with a word nobody else knew. On a rejection that named no resolution, the free-text reason is stored here instead — which is the one case a value outside the two sets appears.
    final String? resolution;

    /// One entry per returned position that carried restock: true. Empty when nothing was flagged.
    final List<OrderRestockPosition>? restock;

    /// Where the return stands: 'registered' = announced, nothing booked; 'received' = the goods are back but not yet settled; 'completed' = settled, and the only transition that books quantity_returned; 'rejected' = refused, nothing booked. The last two are final.
    final enums.OrderReturnStatus? status;

    /// When the return last changed — each of its transitions writes it.
    final String? updated_at;

    OrderReturnCompleted({
        this.completed_at,
        this.created_at,
        this.id,
        this.metadata,
        this.number,
        this.order_id,
        this.positions,
        this.reason,
        this.received_at,
        this.registered_at,
        this.rejected_at,
        this.resolution,
        this.restock,
        this.status,
        this.updated_at,
    });

    factory OrderReturnCompleted.fromMap(Map<String, dynamic> map) {
        return OrderReturnCompleted(
            completed_at: map['completed_at']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            metadata: map['metadata'],
            number: map['number']?.toString(),
            order_id: map['order_id']?.toString(),
            positions: map['positions'] != null ? List<OrderReturnedPosition>.from(map['positions'].map((p) => OrderReturnedPosition.fromMap(p))) : null,
            reason: map['reason']?.toString(),
            received_at: map['received_at']?.toString(),
            registered_at: map['registered_at']?.toString(),
            rejected_at: map['rejected_at']?.toString(),
            resolution: map['resolution']?.toString(),
            restock: map['restock'] != null ? List<OrderRestockPosition>.from(map['restock'].map((p) => OrderRestockPosition.fromMap(p))) : null,
            status: map['status'] != null ? enums.OrderReturnStatus.values.firstWhere((e) => e.value == map['status']) : null,
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "completed_at": completed_at,
            "created_at": created_at,
            "id": id,
            "metadata": metadata,
            "number": number,
            "order_id": order_id,
            "positions": positions?.map((p) => p.toMap()).toList(),
            "reason": reason,
            "received_at": received_at,
            "registered_at": registered_at,
            "rejected_at": rejected_at,
            "resolution": resolution,
            "restock": restock?.map((p) => p.toMap()).toList(),
            "status": status?.value,
            "updated_at": updated_at,
        };
    }
}
