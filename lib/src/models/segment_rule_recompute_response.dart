part of '../../models.dart';

///
class SegmentRuleRecomputeResponse implements Model {
  /// Rule memberships inserted by THIS call.
  final int? added;

  /// True when every membership insert used a bulk array request; false if any batch fell back to row-at-a-time.
  final bool? batched;

  /// Set when the pass completes.
  final String? computed_at;

  /// Send back on the next call; null when the pass is done.
  final String? cursor;

  /// False means work remains — POST again with `cursor`.
  final bool? done;

  /// Matching organizations examined by THIS call.
  final int? processed;

  /// Rule memberships deleted by THIS call.
  final int? removed;

  /// The segment that was recomputed.
  final String? segment_id;

  /// The rule's full match count; null until done.
  final int? total;

  SegmentRuleRecomputeResponse({
    this.added,
    this.batched,
    this.computed_at,
    this.cursor,
    this.done,
    this.processed,
    this.removed,
    this.segment_id,
    this.total,
  });

  factory SegmentRuleRecomputeResponse.fromMap(Map<String, dynamic> map) {
    return SegmentRuleRecomputeResponse(
      added: map['added'],
      batched: map['batched'],
      computed_at: map['computed_at']?.toString(),
      cursor: map['cursor']?.toString(),
      done: map['done'],
      processed: map['processed'],
      removed: map['removed'],
      segment_id: map['segment_id']?.toString(),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "added": added,
      "batched": batched,
      "computed_at": computed_at,
      "cursor": cursor,
      "done": done,
      "processed": processed,
      "removed": removed,
      "segment_id": segment_id,
      "total": total,
    };
  }
}
