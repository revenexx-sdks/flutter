part of '../../models.dart';

///
class Template implements Model {
  ///
  final String body_html;

  ///
  final String body_text;

  ///
  final String channel;

  ///
  final String content_sid;

  ///
  final String created_at;

  ///
  final List design;

  ///
  final bool enabled;

  ///
  final String has_unpublished_changes;

  ///
  final String id;

  ///
  final String is_published;

  ///
  final String key;

  ///
  final String layout_id;

  ///
  final String lifecycle_state;

  ///
  final String locale;

  ///
  final List markets;

  ///
  final String message_class;

  ///
  final String published_version_id;

  ///
  final String source_library_key;

  ///
  final String subject;

  ///
  final String tenant_id;

  ///
  final bool test_mode;

  ///
  final String title;

  ///
  final String updated_at;

  ///
  final String uses_raw_html;

  ///
  final String valid_from;

  ///
  final String valid_until;

  ///
  final List variable_defaults;

  ///
  final List variables;

  ///
  final String whatsapp_category;

  Template({
    required this.body_html,
    required this.body_text,
    required this.channel,
    required this.content_sid,
    required this.created_at,
    required this.design,
    required this.enabled,
    required this.has_unpublished_changes,
    required this.id,
    required this.is_published,
    required this.key,
    required this.layout_id,
    required this.lifecycle_state,
    required this.locale,
    required this.markets,
    required this.message_class,
    required this.published_version_id,
    required this.source_library_key,
    required this.subject,
    required this.tenant_id,
    required this.test_mode,
    required this.title,
    required this.updated_at,
    required this.uses_raw_html,
    required this.valid_from,
    required this.valid_until,
    required this.variable_defaults,
    required this.variables,
    required this.whatsapp_category,
  });

  factory Template.fromMap(Map<String, dynamic> map) {
    return Template(
      body_html: map['body_html'].toString(),
      body_text: map['body_text'].toString(),
      channel: map['channel'].toString(),
      content_sid: map['content_sid'].toString(),
      created_at: map['created_at'].toString(),
      design: List.from(map['design'] ?? []),
      enabled: map['enabled'],
      has_unpublished_changes: map['has_unpublished_changes'].toString(),
      id: map['id'].toString(),
      is_published: map['is_published'].toString(),
      key: map['key'].toString(),
      layout_id: map['layout_id'].toString(),
      lifecycle_state: map['lifecycle_state'].toString(),
      locale: map['locale'].toString(),
      markets: List.from(map['markets'] ?? []),
      message_class: map['message_class'].toString(),
      published_version_id: map['published_version_id'].toString(),
      source_library_key: map['source_library_key'].toString(),
      subject: map['subject'].toString(),
      tenant_id: map['tenant_id'].toString(),
      test_mode: map['test_mode'],
      title: map['title'].toString(),
      updated_at: map['updated_at'].toString(),
      uses_raw_html: map['uses_raw_html'].toString(),
      valid_from: map['valid_from'].toString(),
      valid_until: map['valid_until'].toString(),
      variable_defaults: List.from(map['variable_defaults'] ?? []),
      variables: List.from(map['variables'] ?? []),
      whatsapp_category: map['whatsapp_category'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "body_html": body_html,
      "body_text": body_text,
      "channel": channel,
      "content_sid": content_sid,
      "created_at": created_at,
      "design": design,
      "enabled": enabled,
      "has_unpublished_changes": has_unpublished_changes,
      "id": id,
      "is_published": is_published,
      "key": key,
      "layout_id": layout_id,
      "lifecycle_state": lifecycle_state,
      "locale": locale,
      "markets": markets,
      "message_class": message_class,
      "published_version_id": published_version_id,
      "source_library_key": source_library_key,
      "subject": subject,
      "tenant_id": tenant_id,
      "test_mode": test_mode,
      "title": title,
      "updated_at": updated_at,
      "uses_raw_html": uses_raw_html,
      "valid_from": valid_from,
      "valid_until": valid_until,
      "variable_defaults": variable_defaults,
      "variables": variables,
      "whatsapp_category": whatsapp_category,
    };
  }
}
