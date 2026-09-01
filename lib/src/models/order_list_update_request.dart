part of '../../models.dart';

/// Partial update — rename, visibility or kind. Positions go through the items routes, and the owner cannot be changed.
class OrderListUpdateRequest implements Model {
  /// List kind — the `code` of one of the tenant's own kinds (GET /orderlists/kinds); defaults to the flagged one, or the market's 'default_kind' setting.
  final String? kind;

  /// Free-form data the tenant keeps on the list — an ERP requisition number, a department, whatever an integration needs to recognise the list again. Never read by this app, and never merged: a write replaces the whole document.
  final Map? metadata;

  /// What the buyer calls this list. Free text, at least one character, and not unique: two contacts may both keep a "Weekly office supplies". It is also the name a NEW cart gets when POST /orderlists/{id}/cart creates one.
  final String? name;

  /// Whether the OWNING ORGANIZATION may see this list. False — the default — keeps it private to `owner_id`, and a foreign private list answers 404 rather than 403, so an outsider learns nothing from the difference. True lets every contact of `organization_id` READ it, and write it only where the tenant turned on the `shared_lists_editable` setting. A list with no `organization_id` shares with nobody however this is set.
  final bool? shared;

  OrderListUpdateRequest({
    this.kind,
    this.metadata,
    this.name,
    this.shared,
  });

  factory OrderListUpdateRequest.fromMap(Map<String, dynamic> map) {
    return OrderListUpdateRequest(
      kind: map['kind']?.toString(),
      metadata: map['metadata'],
      name: map['name']?.toString(),
      shared: map['shared'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "kind": kind,
      "metadata": metadata,
      "name": name,
      "shared": shared,
    };
  }
}
