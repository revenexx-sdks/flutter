part of '../../models.dart';

/// 
class Suppression implements Model {
    /// 
    final String address;

    /// 
    final String address_hash;

    /// 
    final String channel;

    /// 
    final String created_at;

    /// 
    final String expires_at;

    /// 
    final String id;

    /// 
    final String note;

    /// 
    final String reason;

    /// 
    final String scope;

    /// 
    final String source;

    /// 
    final String tenant_id;

    /// 
    final String updated_at;

    Suppression({
        required this.address,
        required this.address_hash,
        required this.channel,
        required this.created_at,
        required this.expires_at,
        required this.id,
        required this.note,
        required this.reason,
        required this.scope,
        required this.source,
        required this.tenant_id,
        required this.updated_at,
    });

    factory Suppression.fromMap(Map<String, dynamic> map) {
        return Suppression(
            address: map['address'].toString(),
            address_hash: map['address_hash'].toString(),
            channel: map['channel'].toString(),
            created_at: map['created_at'].toString(),
            expires_at: map['expires_at'].toString(),
            id: map['id'].toString(),
            note: map['note'].toString(),
            reason: map['reason'].toString(),
            scope: map['scope'].toString(),
            source: map['source'].toString(),
            tenant_id: map['tenant_id'].toString(),
            updated_at: map['updated_at'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "address": address,
            "address_hash": address_hash,
            "channel": channel,
            "created_at": created_at,
            "expires_at": expires_at,
            "id": id,
            "note": note,
            "reason": reason,
            "scope": scope,
            "source": source,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}
