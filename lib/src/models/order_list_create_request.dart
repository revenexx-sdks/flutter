part of '../../models.dart';

///
class OrderListCreateRequest implements Model {
  /// Optional initial positions. Every one is validated — and article-checked where `reject_unknown_articles` is on — BEFORE the list row is written, so a rejected position never leaves an empty list behind.
  final List<OrderListItemInput>? items;

  /// List kind — the `code` of one of the tenant's own kinds (GET /orderlists/kinds); defaults to the flagged one, or the market's 'default_kind' setting.
  final String? kind;

  /// Free-form data the tenant keeps on the list — an ERP requisition number, a department, whatever an integration needs to recognise the list again. Never read by this app, and never merged: a write replaces the whole document.
  final Map? metadata;

  /// What the buyer calls this list. Free text, at least one character, and not unique: two contacts may both keep a "Weekly office supplies". It is also the name a NEW cart gets when POST /orderlists/{id}/cart creates one.
  final String name;

  /// The organization the sharing is scoped to. Null means the list can only ever be the owner's own: `shared` is meaningless without it, because there is no set of people to share with. It is also what the order conversion hands the orders app as the buying organization.
  final String? organization_id;

  /// The contact who owns the list. Ownership IS the authorization here: a caller the gateway resolved to a contact sees their own lists plus their organization's shared ones, and may write only their own — unless `shared_lists_editable` opens a shared list to the whole owning organization. Set once at create; no route moves a list to another owner.
  final String owner_id;

  /// The owner's display name as it stood when the list was created — a snapshot, so renaming the contact does not rewrite it. Carried so a shared list can say whose it is without a call to the contacts app.
  final String owner_name;

  /// Whether the OWNING ORGANIZATION may see this list. False — the default — keeps it private to `owner_id`, and a foreign private list answers 404 rather than 403, so an outsider learns nothing from the difference. True lets every contact of `organization_id` READ it, and write it only where the tenant turned on the `shared_lists_editable` setting. A list with no `organization_id` shares with nobody however this is set.
  final bool? shared;

  OrderListCreateRequest({
    this.items,
    this.kind,
    this.metadata,
    required this.name,
    this.organization_id,
    required this.owner_id,
    required this.owner_name,
    this.shared,
  });

  factory OrderListCreateRequest.fromMap(Map<String, dynamic> map) {
    return OrderListCreateRequest(
      items: map['items'] != null
          ? List<OrderListItemInput>.from(
              map['items'].map((p) => OrderListItemInput.fromMap(p)))
          : null,
      kind: map['kind']?.toString(),
      metadata: map['metadata'],
      name: map['name'].toString(),
      organization_id: map['organization_id']?.toString(),
      owner_id: map['owner_id'].toString(),
      owner_name: map['owner_name'].toString(),
      shared: map['shared'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "items": items?.map((p) => p.toMap()).toList(),
      "kind": kind,
      "metadata": metadata,
      "name": name,
      "organization_id": organization_id,
      "owner_id": owner_id,
      "owner_name": owner_name,
      "shared": shared,
    };
  }
}
