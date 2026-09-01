part of '../../models.dart';

/// 
class Binding implements Model {
    /// 
    final String channel;

    /// 
    final String created_at;

    /// 
    final bool enabled;

    /// 
    final String event_topic;

    /// 
    final int fallback_order;

    /// 
    final String id;

    /// 
    final String locale;

    /// 
    final String recipient;

    /// 
    final String template_key;

    /// 
    final String tenant_id;

    /// 
    final String updated_at;

    Binding({
        required this.channel,
        required this.created_at,
        required this.enabled,
        required this.event_topic,
        required this.fallback_order,
        required this.id,
        required this.locale,
        required this.recipient,
        required this.template_key,
        required this.tenant_id,
        required this.updated_at,
    });

    factory Binding.fromMap(Map<String, dynamic> map) {
        return Binding(
            channel: map['channel'].toString(),
            created_at: map['created_at'].toString(),
            enabled: map['enabled'],
            event_topic: map['event_topic'].toString(),
            fallback_order: map['fallback_order'],
            id: map['id'].toString(),
            locale: map['locale'].toString(),
            recipient: map['recipient'].toString(),
            template_key: map['template_key'].toString(),
            tenant_id: map['tenant_id'].toString(),
            updated_at: map['updated_at'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel": channel,
            "created_at": created_at,
            "enabled": enabled,
            "event_topic": event_topic,
            "fallback_order": fallback_order,
            "id": id,
            "locale": locale,
            "recipient": recipient,
            "template_key": template_key,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
        };
    }
}
