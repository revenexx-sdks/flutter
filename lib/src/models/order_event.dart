part of '../../models.dart';

/// 
class OrderEvent implements Model {
    /// 
    final String? actor;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? name;

    /// 
    final String? order_id;

    /// 
    final Map? payload;

    OrderEvent({
        this.actor,
        this.created_at,
        this.id,
        this.name,
        this.order_id,
        this.payload,
    });

    factory OrderEvent.fromMap(Map<String, dynamic> map) {
        return OrderEvent(
            actor: map['actor']?.toString(),
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            name: map['name']?.toString(),
            order_id: map['order_id']?.toString(),
            payload: map['payload'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "actor": actor,
            "created_at": created_at,
            "id": id,
            "name": name,
            "order_id": order_id,
            "payload": payload,
        };
    }
}
