part of '../../models.dart';

/// Which of the three standard codes this call had to create and which were already there.
class OrderNumberRangesSeeded implements Model {
    /// The codes that were created just now, with the standard format ORD-/DEL-/RET- and padding 6. Empty on every call after the first.
    final List<String>? created;

    /// The codes that were already there and were left EXACTLY as they are — a merchant who changed the prefix or the counter keeps their change. That is what makes this call safe to run again.
    final List<String>? existing;

    OrderNumberRangesSeeded({
        this.created,
        this.existing,
    });

    factory OrderNumberRangesSeeded.fromMap(Map<String, dynamic> map) {
        return OrderNumberRangesSeeded(
            created: List.from(map['created'] ?? []),
            existing: List.from(map['existing'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created": created,
            "existing": existing,
        };
    }
}
