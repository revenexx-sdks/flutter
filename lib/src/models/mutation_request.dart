part of '../../models.dart';

/// 
class MutationRequest implements Model {
    /// 
    final String? langcode;

    /// 
    final Map? payload;

    /// Mutation plugin id (add, move, delete, duplicate, update_field_value, ...).
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
