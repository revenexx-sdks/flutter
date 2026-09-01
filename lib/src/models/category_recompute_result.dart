part of '../../models.dart';

/// 
class CategoryRecomputeResult implements Model {
    /// Membership rows inserted with source='rule' by this call.
    final int? added;

    /// False → the bulk insert was refused and the call fell back to one request per row. A performance fact, not an error.
    final bool? batched;

    /// The category this pass belongs to, echoed back — a caller driving several loops keys its state by it.
    final String? category_id;

    /// When the pass completed, and what `categories.rules_computed_at` was stamped with. Null while `done` is false.
    final String? computed_at;

    /// The product id this call reconciled up to, to hand back on the next one. Null when `done`.
    final String? cursor;

    /// False → this call spent its budget mid-pass. Send `cursor` back to continue; the counters below are THIS call only, so a caller looping to completion sums them itself.
    final bool? done;

    /// Matching products examined by this call.
    final int? processed;

    /// Stale rule rows deleted by this call.
    final int? removed;

    /// Products the rule currently selects. Null while `done` is false — the pass has not seen the whole catalog yet, so there is no total to report.
    final int? total;

    CategoryRecomputeResult({
        this.added,
        this.batched,
        this.category_id,
        this.computed_at,
        this.cursor,
        this.done,
        this.processed,
        this.removed,
        this.total,
    });

    factory CategoryRecomputeResult.fromMap(Map<String, dynamic> map) {
        return CategoryRecomputeResult(
            added: map['added'],
            batched: map['batched'],
            category_id: map['category_id']?.toString(),
            computed_at: map['computed_at']?.toString(),
            cursor: map['cursor']?.toString(),
            done: map['done'],
            processed: map['processed'],
            removed: map['removed'],
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "added": added,
            "batched": batched,
            "category_id": category_id,
            "computed_at": computed_at,
            "cursor": cursor,
            "done": done,
            "processed": processed,
            "removed": removed,
            "total": total,
        };
    }
}
