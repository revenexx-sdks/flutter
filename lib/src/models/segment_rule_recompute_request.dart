part of '../../models.dart';

///
class SegmentRuleRecomputeRequest implements Model {
  /// Continuation token from a previous response — the id of the last organization the pass touched. Omit to resume or start automatically; pass null to force a restart from the beginning.
  final String? cursor;

  SegmentRuleRecomputeRequest({
    this.cursor,
  });

  factory SegmentRuleRecomputeRequest.fromMap(Map<String, dynamic> map) {
    return SegmentRuleRecomputeRequest(
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
