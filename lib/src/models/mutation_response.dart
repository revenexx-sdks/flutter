part of '../../models.dart';

/// blökkli MutationResponseLike: success flag plus the full re-materialized editor state.
class MutationResponse implements Model {
    /// Full editor state (see pages.editor.state).
    final Map? state;

    /// 
    final bool? success;

    /// 
    final List<Map>? violations;

    MutationResponse({
        this.state,
        this.success,
        this.violations,
    });

    factory MutationResponse.fromMap(Map<String, dynamic> map) {
        return MutationResponse(
            state: map['state'],
            success: map['success'],
            violations: List.from(map['violations'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "state": state,
            "success": success,
            "violations": violations,
        };
    }
}
