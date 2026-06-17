part of '../../models.dart';

/// 
class Greeting implements Model {
    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final String? locale;

    /// 
    final String? message;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final String? tenant_id;

    /// 
    final String? updated_at;

    Greeting({
        this.created_at,
        this.id,
        this.locale,
        this.message,
        this.metadata,
        this.name,
        this.tenant_id,
        this.updated_at,
    });

    factory Greeting.fromMap(Map<String, dynamic> map) {
        return Greeting(
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            locale: map['locale']?.toString(),
            message: map['message']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            tenant_id: map['tenant_id']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "id": id,
            "locale": locale,
            "message": message,
            "metadata": metadata,
            "name": name,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}
