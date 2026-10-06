part of '../../models.dart';

///
class PriceListCreateRequest implements Model {
  /// Scope: only this sales channel. Beats the open lists, loses to contact and organization.
  final String? channel_id;

  /// Unique list code per tenant — the handle every import and integration addresses this list by. A code already in use answers 409.
  final String code;

  /// Scope: only this contact. The most specific scope there is — it beats organization, channel and every open list, whatever their priority.
  final String? contact_id;

  /// ISO 4217 code (default EUR) — the currency of EVERY amount in this list, since entries carry none of their own. Resolution only considers lists matching the currency of the call; nothing is ever converted.
  final String? currency;

  /// Free text for whoever maintains the list — why it exists and who it is for. Never shown to a buyer.
  final String? description;

  /// The fallback list. Within its group it sorts LAST, so it wins only where nothing more specific priced the item. Use prices.lists.make-default to move the flag rather than setting it here — two defaults leave a tie to row order.
  final bool? is_default;

  /// Localised names, keyed by language tag — {"de": "Händlerpreise", "en": "Dealer prices"}. Omit to show `name` everywhere.
  final Map<String, dynamic>? labels;

  /// Free-form bag: whatever JSON object you write round-trips exactly, and this app never reads it. Its keys are yours — ERP provenance is the usual content.
  final Map<String, dynamic>? metadata;

  /// Operator-facing name, shown wherever a human picks a list.
  final String name;

  /// Scope: only buyers of this organization. Beats channel-scoped and open lists.
  final String? organization_id;

  /// Tie-break WITHIN a specificity group (higher wins, default 0). It never beats scope: an organization list at 0 still wins over an open list at 100.
  final int? priority;

  /// Gate: when true the list resolves only for an authenticated buyer (contact or organization context); anonymous resolve calls get on_request. Default false (open to everyone).
  final bool? requires_auth;

  /// Default 'active' — only active lists resolve. 'inactive' retires a list without deleting its prices.
  final enums.PriceListStatus? status;

  /// Whether the amounts in this list are net (tax excluded) or gross (tax included) — the one fact a price cannot be without. Omit (null) to inherit the tenant's tax_inclusive_default setting; the resolve answer names which of the two decided under tax_basis_source.
  final enums.PriceListTaxBasis? tax_basis;

  /// LEGACY mirror of tax_basis. false is the column default and is NOT read as a statement of intent; true is read as gross, and only where tax_basis is null. Prefer tax_basis.
  final bool? tax_included;

  /// Start of the validity window of the WHOLE list (ISO 8601); null = open-ended. Outside it the list is not a candidate at all.
  final String? valid_from;

  /// End of the validity window of the whole list; null = open-ended. Lets a season expire on its own instead of being deactivated by hand.
  final String? valid_until;

  PriceListCreateRequest({
    this.channel_id,
    required this.code,
    this.contact_id,
    this.currency,
    this.description,
    this.is_default,
    this.labels,
    this.metadata,
    required this.name,
    this.organization_id,
    this.priority,
    this.requires_auth,
    this.status,
    this.tax_basis,
    this.tax_included,
    this.valid_from,
    this.valid_until,
  });

  factory PriceListCreateRequest.fromMap(Map<String, dynamic> map) {
    return PriceListCreateRequest(
      channel_id: map['channel_id']?.toString(),
      code: map['code'].toString(),
      contact_id: map['contact_id']?.toString(),
      currency: map['currency']?.toString(),
      description: map['description']?.toString(),
      is_default: map['is_default'],
      labels: map['labels'],
      metadata: map['metadata'],
      name: map['name'].toString(),
      organization_id: map['organization_id']?.toString(),
      priority: map['priority'],
      requires_auth: map['requires_auth'],
      status: map['status'] != null
          ? enums.PriceListStatus.values
              .firstWhere((e) => e.value == map['status'])
          : null,
      tax_basis: map['tax_basis'] != null
          ? enums.PriceListTaxBasis.values
              .firstWhere((e) => e.value == map['tax_basis'])
          : null,
      tax_included: map['tax_included'],
      valid_from: map['valid_from']?.toString(),
      valid_until: map['valid_until']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "channel_id": channel_id,
      "code": code,
      "contact_id": contact_id,
      "currency": currency,
      "description": description,
      "is_default": is_default,
      "labels": labels,
      "metadata": metadata,
      "name": name,
      "organization_id": organization_id,
      "priority": priority,
      "requires_auth": requires_auth,
      "status": status?.value,
      "tax_basis": tax_basis?.value,
      "tax_included": tax_included,
      "valid_from": valid_from,
      "valid_until": valid_until,
    };
  }
}
