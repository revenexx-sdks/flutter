part of '../../models.dart';

/// 
class SegmentRuleRecomputeAllResponse implements Model {
    /// Rule memberships inserted across every segment in THIS call.
    final int? added;

    /// False when any segment is unfinished or skipped — call again.
    final bool? done;

    /// Segments whose own recompute raised — they carry `error` and `status` in `segments` and did not abort the run.
    final int? failed;

    /// Ruled segments the run looked at.
    final int? processed;

    /// Rule memberships deleted across every segment in THIS call.
    final int? removed;

    /// One entry per segment; a failed segment carries `error` and `status` instead of the counters.
    final List<Map>? segments;

    /// Segments the budget did not reach at all.
    final int? skipped;

    SegmentRuleRecomputeAllResponse({
        this.added,
        this.done,
        this.failed,
        this.processed,
        this.removed,
        this.segments,
        this.skipped,
    });

    factory SegmentRuleRecomputeAllResponse.fromMap(Map<String, dynamic> map) {
        return SegmentRuleRecomputeAllResponse(
            added: map['added'],
            done: map['done'],
            failed: map['failed'],
            processed: map['processed'],
            removed: map['removed'],
            segments: List.from(map['segments'] ?? []),
            skipped: map['skipped'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "added": added,
            "done": done,
            "failed": failed,
            "processed": processed,
            "removed": removed,
            "segments": segments,
            "skipped": skipped,
        };
    }
}
