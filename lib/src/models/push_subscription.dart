part of '../../models.dart';

///
class PushSubscription implements Model {
  ///
  final String created_at;

  ///
  final String endpoint;

  ///
  final String id;

  ///
  final String last_seen_at;

  ///
  final String subscriber_id;

  ///
  final String tenant_id;

  ///
  final String updated_at;

  ///
  final String user_agent;

  PushSubscription({
    required this.created_at,
    required this.endpoint,
    required this.id,
    required this.last_seen_at,
    required this.subscriber_id,
    required this.tenant_id,
    required this.updated_at,
    required this.user_agent,
  });

  factory PushSubscription.fromMap(Map<String, dynamic> map) {
    return PushSubscription(
      created_at: map['created_at'].toString(),
      endpoint: map['endpoint'].toString(),
      id: map['id'].toString(),
      last_seen_at: map['last_seen_at'].toString(),
      subscriber_id: map['subscriber_id'].toString(),
      tenant_id: map['tenant_id'].toString(),
      updated_at: map['updated_at'].toString(),
      user_agent: map['user_agent'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "endpoint": endpoint,
      "id": id,
      "last_seen_at": last_seen_at,
      "subscriber_id": subscriber_id,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
      "user_agent": user_agent,
    };
  }
}
