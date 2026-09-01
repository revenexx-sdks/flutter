part of '../../models.dart';

/// 
class Message implements Model {
    /// 
    final List attachments;

    /// 
    final int attempts;

    /// 
    final String binding_id;

    /// 
    final String channel;

    /// 
    final int click_count;

    /// 
    final String clicked_at;

    /// 
    final String created_at;

    /// 
    final List data;

    /// 
    final String delivered_at;

    /// 
    final String error;

    /// 
    final bool from_draft;

    /// 
    final String id;

    /// 
    final String idempotency_fingerprint;

    /// 
    final String idempotency_key;

    /// 
    final String locale;

    /// 
    final String market;

    /// 
    final String message_class;

    /// 
    final int open_count;

    /// 
    final String opened_at;

    /// 
    final String provider_message_id;

    /// 
    final String scheduled_for;

    /// 
    final String sent_at;

    /// 
    final String source_event_id;

    /// 
    final String status;

    /// 
    final String subject;

    /// 
    final String suppression_reason;

    /// 
    final String template_key;

    /// 
    final String tenant_id;

    /// 
    final String to;

    Message({
        required this.attachments,
        required this.attempts,
        required this.binding_id,
        required this.channel,
        required this.click_count,
        required this.clicked_at,
        required this.created_at,
        required this.data,
        required this.delivered_at,
        required this.error,
        required this.from_draft,
        required this.id,
        required this.idempotency_fingerprint,
        required this.idempotency_key,
        required this.locale,
        required this.market,
        required this.message_class,
        required this.open_count,
        required this.opened_at,
        required this.provider_message_id,
        required this.scheduled_for,
        required this.sent_at,
        required this.source_event_id,
        required this.status,
        required this.subject,
        required this.suppression_reason,
        required this.template_key,
        required this.tenant_id,
        required this.to,
    });

    factory Message.fromMap(Map<String, dynamic> map) {
        return Message(
            attachments: List.from(map['attachments'] ?? []),
            attempts: map['attempts'],
            binding_id: map['binding_id'].toString(),
            channel: map['channel'].toString(),
            click_count: map['click_count'],
            clicked_at: map['clicked_at'].toString(),
            created_at: map['created_at'].toString(),
            data: List.from(map['data'] ?? []),
            delivered_at: map['delivered_at'].toString(),
            error: map['error'].toString(),
            from_draft: map['from_draft'],
            id: map['id'].toString(),
            idempotency_fingerprint: map['idempotency_fingerprint'].toString(),
            idempotency_key: map['idempotency_key'].toString(),
            locale: map['locale'].toString(),
            market: map['market'].toString(),
            message_class: map['message_class'].toString(),
            open_count: map['open_count'],
            opened_at: map['opened_at'].toString(),
            provider_message_id: map['provider_message_id'].toString(),
            scheduled_for: map['scheduled_for'].toString(),
            sent_at: map['sent_at'].toString(),
            source_event_id: map['source_event_id'].toString(),
            status: map['status'].toString(),
            subject: map['subject'].toString(),
            suppression_reason: map['suppression_reason'].toString(),
            template_key: map['template_key'].toString(),
            tenant_id: map['tenant_id'].toString(),
            to: map['to'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attachments": attachments,
            "attempts": attempts,
            "binding_id": binding_id,
            "channel": channel,
            "click_count": click_count,
            "clicked_at": clicked_at,
            "created_at": created_at,
            "data": data,
            "delivered_at": delivered_at,
            "error": error,
            "from_draft": from_draft,
            "id": id,
            "idempotency_fingerprint": idempotency_fingerprint,
            "idempotency_key": idempotency_key,
            "locale": locale,
            "market": market,
            "message_class": message_class,
            "open_count": open_count,
            "opened_at": opened_at,
            "provider_message_id": provider_message_id,
            "scheduled_for": scheduled_for,
            "sent_at": sent_at,
            "source_event_id": source_event_id,
            "status": status,
            "subject": subject,
            "suppression_reason": suppression_reason,
            "template_key": template_key,
            "tenant_id": tenant_id,
            "to": to,
        };
    }
}
