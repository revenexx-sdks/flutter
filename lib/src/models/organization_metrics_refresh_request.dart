part of '../../models.dart';

///
class OrganizationMetricsRefreshRequest implements Model {
  /// Anchor for the rolling windows — pass back the value the previous call returned.
  final String? as_of;

  /// Continue an unfinished refresh: the value the previous call returned, verbatim. It is the id of the last organization processed, so only a value this API handed out ever resolves.
  final String? cursor;

  /// Refresh exactly these organizations in one call instead of walking all of them.
  final List<String>? organization_ids;

  OrganizationMetricsRefreshRequest({
    this.as_of,
    this.cursor,
    this.organization_ids,
  });

  factory OrganizationMetricsRefreshRequest.fromMap(Map<String, dynamic> map) {
    return OrganizationMetricsRefreshRequest(
      as_of: map['as_of']?.toString(),
      cursor: map['cursor']?.toString(),
      organization_ids: List.from(map['organization_ids'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "as_of": as_of,
      "cursor": cursor,
      "organization_ids": organization_ids,
    };
  }
}
