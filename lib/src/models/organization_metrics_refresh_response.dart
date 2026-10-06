part of '../../models.dart';

///
class OrganizationMetricsRefreshResponse implements Model {
  /// The instant the rolling windows are measured from. Send it back on every continuation — that is what stops the 30/90/365-day windows sliding while a multi-call refresh runs.
  final String? as_of;

  /// False if an insert had to fall back to row-at-a-time. A performance fact, not an error.
  final bool? batched;

  /// Rollup calls made to the orders app — the cross-app cost of this pass.
  final int? batches;

  /// Where to resume: the id of the last organization this call processed. Send it back verbatim; null when the pass finished. No example is published — the value names a row in THIS tenant, and `cursor: "sample cursor"` reaches PostgREST as a malformed uuid and comes back as a 400 nobody can read.
  final String? cursor;

  /// False means the budget ran out with work left — POST again with the returned `cursor` AND `as_of`.
  final bool? done;

  /// Metrics rows created — organizations that had none yet.
  final int? inserted;

  /// Orders the orders app counted while answering this call.
  final int? orders_scanned;

  /// Orders the orders app could not attribute to a company (B2C/guest). They belong to no organization and land in no metrics row.
  final int? orders_without_organization;

  /// Organizations processed by THIS call.
  final int? organizations;

  /// Rows that already said the same thing — no write was issued. A routine refresh is almost all of these.
  final int? unchanged;

  /// Metrics rows whose numbers actually changed.
  final int? updated;

  /// Of those, how many have at least one counted order.
  final int? with_orders;

  OrganizationMetricsRefreshResponse({
    this.as_of,
    this.batched,
    this.batches,
    this.cursor,
    this.done,
    this.inserted,
    this.orders_scanned,
    this.orders_without_organization,
    this.organizations,
    this.unchanged,
    this.updated,
    this.with_orders,
  });

  factory OrganizationMetricsRefreshResponse.fromMap(Map<String, dynamic> map) {
    return OrganizationMetricsRefreshResponse(
      as_of: map['as_of']?.toString(),
      batched: map['batched'],
      batches: map['batches'],
      cursor: map['cursor']?.toString(),
      done: map['done'],
      inserted: map['inserted'],
      orders_scanned: map['orders_scanned'],
      orders_without_organization: map['orders_without_organization'],
      organizations: map['organizations'],
      unchanged: map['unchanged'],
      updated: map['updated'],
      with_orders: map['with_orders'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "as_of": as_of,
      "batched": batched,
      "batches": batches,
      "cursor": cursor,
      "done": done,
      "inserted": inserted,
      "orders_scanned": orders_scanned,
      "orders_without_organization": orders_without_organization,
      "organizations": organizations,
      "unchanged": unchanged,
      "updated": updated,
      "with_orders": with_orders,
    };
  }
}
