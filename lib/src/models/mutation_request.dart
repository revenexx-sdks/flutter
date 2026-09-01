part of '../../models.dart';

/// One change to the page.
class MutationRequest implements Model {
  /// Which language the returned state should be resolved for. Not the language the change is written in — that lives in the payload.
  final String? langcode;

  /// The arguments of that change; the keys depend on the plugin (`add` takes `{ bundle, hostEntityType, hostEntityUuid, hostField }`, `move` takes `{ uuid, preceedingUuid }`, and so on). Anything non-deterministic in it — new uuids, a library item's tree, a copied subtree — is resolved once here and stored, so replaying the log is deterministic forever.
  final Map<String, dynamic>? payload;

  /// Which kind of change this is — `add`, `move`, `delete`, `duplicate`, `update_field_value`, `update_options`, … An id this app does not implement is refused with 400 rather than stored, because the log has to replay.
  final String plugin;

  MutationRequest({
    this.langcode,
    this.payload,
    required this.plugin,
  });

  factory MutationRequest.fromMap(Map<String, dynamic> map) {
    return MutationRequest(
      langcode: map['langcode']?.toString(),
      payload: map['payload'],
      plugin: map['plugin'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "langcode": langcode,
      "payload": payload,
      "plugin": plugin,
    };
  }
}
