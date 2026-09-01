part of '../../models.dart';

/// Add one organization to a segment. Use source='manual' (the default) for hand-picked members; rule members are materialized by the recompute route.
class SegmentMemberCreateRequest implements Model {
  /// The member company. Segments group companies, never people — a person is reached through their organization.
  final String organization_id;

  /// The segment.
  final String segment_id;

  /// How this membership came about: 'manual' is hand-picked, 'rule' was materialized by a recompute. The distinction is load-bearing — a recompute only ever inserts and deletes 'rule' rows, so a hand-picked member survives every rule change. Default 'manual'.
  final enums.SegmentMemberSource? source;

  SegmentMemberCreateRequest({
    required this.organization_id,
    required this.segment_id,
    this.source,
  });

  factory SegmentMemberCreateRequest.fromMap(Map<String, dynamic> map) {
    return SegmentMemberCreateRequest(
      organization_id: map['organization_id'].toString(),
      segment_id: map['segment_id'].toString(),
      source: map['source'] != null
          ? enums.SegmentMemberSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "organization_id": organization_id,
      "segment_id": segment_id,
      "source": source?.value,
    };
  }
}
