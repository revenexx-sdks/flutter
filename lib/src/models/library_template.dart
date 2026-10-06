part of '../../models.dart';

///
class LibraryTemplate implements Model {
  ///
  final String body_html;

  ///
  final String body_text;

  ///
  final String channel;

  ///
  final String created_at;

  ///
  final String description;

  ///
  final List design;

  ///
  final String id;

  ///
  final String key;

  ///
  final String locale;

  ///
  final String subject;

  ///
  final String suggested_event;

  ///
  final String suggested_recipient;

  ///
  final String title;

  ///
  final String updated_at;

  ///
  final List variables;

  LibraryTemplate({
    required this.body_html,
    required this.body_text,
    required this.channel,
    required this.created_at,
    required this.description,
    required this.design,
    required this.id,
    required this.key,
    required this.locale,
    required this.subject,
    required this.suggested_event,
    required this.suggested_recipient,
    required this.title,
    required this.updated_at,
    required this.variables,
  });

  factory LibraryTemplate.fromMap(Map<String, dynamic> map) {
    return LibraryTemplate(
      body_html: map['body_html'].toString(),
      body_text: map['body_text'].toString(),
      channel: map['channel'].toString(),
      created_at: map['created_at'].toString(),
      description: map['description'].toString(),
      design: List.from(map['design'] ?? []),
      id: map['id'].toString(),
      key: map['key'].toString(),
      locale: map['locale'].toString(),
      subject: map['subject'].toString(),
      suggested_event: map['suggested_event'].toString(),
      suggested_recipient: map['suggested_recipient'].toString(),
      title: map['title'].toString(),
      updated_at: map['updated_at'].toString(),
      variables: List.from(map['variables'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "body_html": body_html,
      "body_text": body_text,
      "channel": channel,
      "created_at": created_at,
      "description": description,
      "design": design,
      "id": id,
      "key": key,
      "locale": locale,
      "subject": subject,
      "suggested_event": suggested_event,
      "suggested_recipient": suggested_recipient,
      "title": title,
      "updated_at": updated_at,
      "variables": variables,
    };
  }
}
