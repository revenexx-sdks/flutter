part of '../../models.dart';

/// blökkli MutationResponseLike: whether the call was applied, plus the FULL re-materialized editor state — so a client never has to re-fetch after a change.
class MutationResponse implements Model {
    /// Everything the blökkli editor runs on, for one page in one language, materialized at the current point of the undo history. The theme adapter maps it 1:1 onto blökkli's MappedState.
    final EditorState? state;

    /// Whether the change was applied.
    final bool? success;

    /// Why the call was refused, when `success` is false.
    final List<Map>? violations;

    MutationResponse({
        this.state,
        this.success,
        this.violations,
    });

    factory MutationResponse.fromMap(Map<String, dynamic> map) {
        return MutationResponse(
            state: map['state'] != null ? EditorState.fromMap(map['state']) : null,
            success: map['success'],
            violations: List.from(map['violations'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "state": state?.toMap(),
            "success": success,
            "violations": violations,
        };
    }
}
