part of '../../models.dart';

/// Omit the body entirely to resume an unfinished pass, or start a fresh one when the last completed.
class CategoryRecomputeRequest implements Model {
    /// The `cursor` a previous call returned, to continue that pass. Send `null` explicitly to restart from the beginning; omit the field to let the app decide (resume if a pass is in flight, otherwise start fresh). Anything that is not a string or null is a 400.
    final String? cursor;

    CategoryRecomputeRequest({
        this.cursor,
    });

    factory CategoryRecomputeRequest.fromMap(Map<String, dynamic> map) {
        return CategoryRecomputeRequest(
            cursor: map['cursor']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cursor": cursor,
        };
    }
}
