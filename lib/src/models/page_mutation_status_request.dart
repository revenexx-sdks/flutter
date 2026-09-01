part of '../../models.dart';

/// Which entry of the history to switch, and to what.
class PageMutationStatusRequest implements Model {
    /// Whether the entry takes part in the replay.
    final bool enabled;

    /// The position in the mutation log to switch. Unknown positions answer 404.
    final int index;

    /// Which language the returned state should be resolved for.
    final String? langcode;

    PageMutationStatusRequest({
        required this.enabled,
        required this.index,
        this.langcode,
    });

    factory PageMutationStatusRequest.fromMap(Map<String, dynamic> map) {
        return PageMutationStatusRequest(
            enabled: map['enabled'],
            index: map['index'],
            langcode: map['langcode']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "enabled": enabled,
            "index": index,
            "langcode": langcode,
        };
    }
}
