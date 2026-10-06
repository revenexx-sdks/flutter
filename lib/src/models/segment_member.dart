part of '../../models.dart';

/// One organization inside one segment, and the record of how it got there (hand-picked or matched by the rule).
class SegmentMember implements Model {
  /// When the organization joined the segment.
  final String? created_at;

  /// Primary key of the membership row.
  final String? id;

  /// The member company. Segments group companies, never people — a person is reached through their organization.
  final String? organization_id;

  /// The segment.
  final String? segment_id;

  /// How this membership came about: 'manual' is hand-picked, 'rule' was materialized by a recompute. The distinction is load-bearing — a recompute only ever inserts and deletes 'rule' rows, so a hand-picked member survives every rule change.
  final enums.SegmentMemberSource? source;

  /// The tenant this row belongs to — the store slug, not an id. Set by the platform from the authenticated context, never by a caller; a write that carries it is ignored, and no request can read another tenant's rows by sending a different one.
  final String? tenant_id;

  SegmentMember({
    this.created_at,
    this.id,
    this.organization_id,
    this.segment_id,
    this.source,
    this.tenant_id,
  });

  factory SegmentMember.fromMap(Map<String, dynamic> map) {
    return SegmentMember(
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      organization_id: map['organization_id']?.toString(),
      segment_id: map['segment_id']?.toString(),
      source: map['source'] != null
          ? enums.SegmentMemberSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      tenant_id: map['tenant_id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "id": id,
      "organization_id": organization_id,
      "segment_id": segment_id,
      "source": source?.value,
      "tenant_id": tenant_id,
    };
  }
}
