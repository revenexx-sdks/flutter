part of '../../models.dart';

/// Which cart survived, and what it cost. `target` is the cart that SURVIVES, already recomputed — that is the one to render. The source cart still exists and still holds its own lines: a merge copies them into the target and closes the source, it does not move them.
class CartMergeResult implements Model {
    /// The source cart, now status merged, with merged_into_cart_id pointing at the target. It still exists and still holds its own lines: the merge copies, it does not move.
    final String? merged_cart_id;

    /// Lines read out of the source. Identical product lines at the same price add up rather than duplicating, so the target may have gained fewer rows than this.
    final int? merged_lines;

    /// 
    final Cart? target;

    CartMergeResult({
        this.merged_cart_id,
        this.merged_lines,
        this.target,
    });

    factory CartMergeResult.fromMap(Map<String, dynamic> map) {
        return CartMergeResult(
            merged_cart_id: map['merged_cart_id']?.toString(),
            merged_lines: map['merged_lines'],
            target: map['target'] != null ? Cart.fromMap(map['target']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "merged_cart_id": merged_cart_id,
            "merged_lines": merged_lines,
            "target": target?.toMap(),
        };
    }
}
