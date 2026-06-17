part of '../../models.dart';

/// 
class Market implements Model {
    /// 
    final String? code;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final Map? labels;

    /// 
    final String? name;

    /// 
    final int? position;

    /// 
    final String? status;

    /// 
    final String? updated_at;

    Market({
        this.code,
        this.created_at,
        this.currency,
        this.id,
        this.is_default,
        this.labels,
        this.name,
        this.position,
        this.status,
        this.updated_at,
    });

    factory Market.fromMap(Map<String, dynamic> map) {
        return Market(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name']?.toString(),
            position: map['position'],
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "currency": currency,
            "id": id,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status,
            "updated_at": updated_at,
        };
    }
}
