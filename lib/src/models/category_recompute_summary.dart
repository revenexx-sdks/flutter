part of '../../models.dart';

/// 
class CategoryRecomputeSummary implements Model {
    /// Membership rows inserted with source='rule' by this call.
    final int? added;

    /// False → the bulk insert was refused and the call fell back to one request per row. A performance fact, not an error.
    final bool? batched;

    /// The category this pass belongs to, echoed back — a caller driving several loops keys its state by it.
    final String? category_id;

    /// The category's code, so a nightly log names something a person recognises.
    final String? code;

    /// When the pass completed, and what `categories.rules_computed_at` was stamped with. Null while `done` is false.
    final String? computed_at;

    /// The product id this call reconciled up to, to hand back on the next one. Null when `done`.
    final String? cursor;

    /// False → this call spent its budget mid-pass. Send `cursor` back to continue; the counters below are THIS call only, so a caller looping to completion sums them itself.
    final bool? done;

    /// Present instead of the counters when this category failed.
    final String? error;

    /// Matching products examined by this call.
    final int? processed;

    /// Stale rule rows deleted by this call.
    final int? removed;

    /// True → the budget ran out before this category was reached; it carries no counters.
    final bool? skipped;

    /// The HTTP status this category WOULD have answered on its own — 400 for a rule that does not compile, 404 for one that vanished mid-run. Null when it succeeded.
    final int? status;

    /// Products the rule currently selects. Null while `done` is false — the pass has not seen the whole catalog yet, so there is no total to report.
    final int? total;

    CategoryRecomputeSummary({
        this.added,
        this.batched,
        this.category_id,
        this.code,
        this.computed_at,
        this.cursor,
        this.done,
        this.error,
        this.processed,
        this.removed,
        this.skipped,
        this.status,
        this.total,
    });

    factory CategoryRecomputeSummary.fromMap(Map<String, dynamic> map) {
        return CategoryRecomputeSummary(
            added: map['added'],
            batched: map['batched'],
            category_id: map['category_id']?.toString(),
            code: map['code']?.toString(),
            computed_at: map['computed_at']?.toString(),
            cursor: map['cursor']?.toString(),
            done: map['done'],
            error: map['error']?.toString(),
            processed: map['processed'],
            removed: map['removed'],
            skipped: map['skipped'],
            status: map['status'],
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "added": added,
            "batched": batched,
            "category_id": category_id,
            "code": code,
            "computed_at": computed_at,
            "cursor": cursor,
            "done": done,
            "error": error,
            "processed": processed,
            "removed": removed,
            "skipped": skipped,
            "status": status,
            "total": total,
        };
    }
}
