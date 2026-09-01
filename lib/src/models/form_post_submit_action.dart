part of '../../models.dart';

/// One post-submit action. `webhook` POSTs `{form, source, data}` to `url`; `entity` writes the mapped fields into another app's entity; `event` is a no-op, because `form.submitted` already carries it.
class FormPostSubmitAction implements Model {
  /// Entity actions: the app that owns the target entity, e.g. 'crm'.
  final String? app;

  /// Disabled actions are skipped. An action with no flag is not run.
  final bool? enabled;

  /// Entity actions: the entity to write, e.g. 'contacts'.
  final String? entity;

  /// Entity actions: which submitted value becomes which column — `{"source": "email", "target": "email"}` reads `data.email` and writes it to the target's `email`.
  final List<FormActionMapping>? mapping;

  /// Webhook actions: the HTTP method. Defaults to POST.
  final String? method;

  /// Entity actions: an explicit route to POST to, instead of the one built from `app` and `entity`.
  final String? path;

  /// Which action this is: 'webhook', 'entity' or 'event'.
  final String? type;

  /// Webhook actions: where to POST. It is called with an 8 second timeout and its answer is not shown to the visitor.
  final String? url;

  final Map<String, dynamic> data;

  FormPostSubmitAction({
    this.app,
    this.enabled,
    this.entity,
    this.mapping,
    this.method,
    this.path,
    this.type,
    this.url,
    required this.data,
  });

  factory FormPostSubmitAction.fromMap(Map<String, dynamic> map) {
    return FormPostSubmitAction(
      app: map['app']?.toString(),
      enabled: map['enabled'],
      entity: map['entity']?.toString(),
      mapping: map['mapping'] != null
          ? List<FormActionMapping>.from(
              map['mapping'].map((p) => FormActionMapping.fromMap(p)))
          : null,
      method: map['method']?.toString(),
      path: map['path']?.toString(),
      type: map['type']?.toString(),
      url: map['url']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "app": app,
      "enabled": enabled,
      "entity": entity,
      "mapping": mapping?.map((p) => p.toMap()).toList(),
      "method": method,
      "path": path,
      "type": type,
      "url": url,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
