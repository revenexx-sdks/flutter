part of '../../models.dart';

/// 
class ChannelVisibilityDecision implements Model {
    /// The id as it was sent, verbatim.
    final String? id;

    /// Why the row was shown or hidden — the answer is auditable, not a bare boolean.
    final enums.ChannelVisibilityReason? reason;

    /// Whether this row may be shown in the resolved channel. The same answer as membership in `visible`; `reason` says why.
    final bool? visible;

    ChannelVisibilityDecision({
        this.id,
        this.reason,
        this.visible,
    });

    factory ChannelVisibilityDecision.fromMap(Map<String, dynamic> map) {
        return ChannelVisibilityDecision(
            id: map['id']?.toString(),
            reason: map['reason'] != null ? enums.ChannelVisibilityReason.values.firstWhere((e) => e.value == map['reason']) : null,
            visible: map['visible'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "id": id,
            "reason": reason?.value,
            "visible": visible,
        };
    }
}
