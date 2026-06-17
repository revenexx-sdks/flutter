part of '../../models.dart';

/// 
class OrderReturn implements Model {
    /// 
    final String? completed_at;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? metadata;

    /// 
    final String? number;

    /// 
    final String? order_id;

    /// 
    final Map? positions;

    /// 
    final String? reason;

    /// 
    final String? received_at;

    /// 
    final String? registered_at;

    /// 
    final String? rejected_at;

    /// 
    final String? resolution;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    OrderReturn({
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
        this.status,
        this.updated_at,
    });

    factory OrderReturn.fromMap(Map<String, dynamic> map) {
        return OrderReturn(
            completed_at: map['completed_at']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            metadata: map['metadata'],
            number: map['number']?.toString(),
            order_id: map['order_id']?.toString(),
            positions: map['positions'],
            reason: map['reason']?.toString(),
            received_at: map['received_at']?.toString(),
            registered_at: map['registered_at']?.toString(),
            rejected_at: map['rejected_at']?.toString(),
            resolution: map['resolution']?.toString(),
            status: map['status']?.toString(),
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
            "positions": positions,
            "reason": reason,
            "received_at": received_at,
            "registered_at": registered_at,
            "rejected_at": rejected_at,
            "resolution": resolution,
            "status": status,
            "updated_at": updated_at,
        };
    }
}
