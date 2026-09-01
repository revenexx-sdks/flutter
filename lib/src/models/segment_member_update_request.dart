part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class SegmentMemberUpdateRequest implements Model {
    /// The member company. Segments group companies, never people — a person is reached through their organization.
    final String? organization_id;

    /// The segment.
    final String? segment_id;

    /// How this membership came about: 'manual' is hand-picked, 'rule' was materialized by a recompute. The distinction is load-bearing — a recompute only ever inserts and deletes 'rule' rows, so a hand-picked member survives every rule change. Default 'manual'.
    final enums.SegmentMemberSource? source;

    SegmentMemberUpdateRequest({
        this.organization_id,
        this.segment_id,
        this.source,
    });

    factory SegmentMemberUpdateRequest.fromMap(Map<String, dynamic> map) {
        return SegmentMemberUpdateRequest(
            organization_id: map['organization_id']?.toString(),
            segment_id: map['segment_id']?.toString(),
            source: map['source'] != null ? enums.SegmentMemberSource.values.firstWhere((e) => e.value == map['source']) : null,
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
