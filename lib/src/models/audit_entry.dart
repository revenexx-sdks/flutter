part of '../../models.dart';

/// 
class AuditEntry implements Model {
    /// 
    final String action;

    /// 
    final List changes;

    /// 
    final String created_at;

    /// 
    final String id;

    /// 
    final String resource_id;

    /// 
    final String resource_key;

    /// 
    final String resource_type;

    /// 
    final String subject;

    /// 
    final String tenant_id;

    AuditEntry({
        required this.action,
        required this.changes,
        required this.created_at,
        required this.id,
        required this.resource_id,
        required this.resource_key,
        required this.resource_type,
        required this.subject,
        required this.tenant_id,
    });

    factory AuditEntry.fromMap(Map<String, dynamic> map) {
        return AuditEntry(
            action: map['action'].toString(),
            changes: List.from(map['changes'] ?? []),
            created_at: map['created_at'].toString(),
            id: map['id'].toString(),
            resource_id: map['resource_id'].toString(),
            resource_key: map['resource_key'].toString(),
            resource_type: map['resource_type'].toString(),
            subject: map['subject'].toString(),
            tenant_id: map['tenant_id'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "action": action,
            "changes": changes,
            "created_at": created_at,
            "id": id,
            "resource_id": resource_id,
            "resource_key": resource_key,
            "resource_type": resource_type,
            "subject": subject,
            "tenant_id": tenant_id,
        };
    }
}
