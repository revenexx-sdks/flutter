part of '../../models.dart';

/// A price list: one currency, one tax basis, one validity window, one buyer scope — and the entries that price items in it. Which list wins for a given buyer is decided by scope first, then priority, then the default flag; see prices.resolve.
class PriceList implements Model {
  /// Buyer scope: this list prices for this sales channel. Beats the open lists, loses to contact and organization scope.
  final String? channel_id;

  /// The unique per-tenant handle of the list — what an import, an ERP export and every integration addresses it by, and what the `default_price_list_code` setting names. It is never quietly reassigned: a second list under a code that is taken answers 409.
  final String? code;

  /// Buyer scope: this list prices for this one contact. The most specific scope there is — it beats organization, channel and every open list, whatever their priority.
  final String? contact_id;

  /// When the list was created. Also the `newest` tie-break’s input when the tenant settles genuine ties that way.
  final String? created_at;

  /// ISO 4217 currency of EVERY amount in this list — entries carry no currency of their own, so this is the one that governs them. Resolution only ever considers lists whose currency equals the currency of the call: a list in another currency is not converted, it simply does not price the item. This app never converts between currencies.
  final String? currency;

  /// Free text for whoever maintains the list — why it exists and who it is for. Never shown to a buyer.
  final String? description;

  /// The price list itself. Every sub-route addresses the list by this id, and a resolve answer names the list that priced an item under `price_list.id`.
  final String? id;

  /// The fallback list. Within its group it deliberately sorts LAST, so a default list wins only where nothing more specific priced the item. At most one list per tenant holds the flag — `prices.lists.make-default` moves it in one call.
  final bool? is_default;

  /// Localised names, keyed by language tag: {"de": "Standardpreise", "en": "Standard prices"}. Read the tag you need and fall back to `en`; `name` is the untranslated original.
  final Map<String, dynamic>? labels;

  /// Free-form bag, unvalidated and never read by this app: whatever JSON object you write round-trips exactly. Its keys are the integration’s own — ERP provenance is the usual content, e.g. {"source_system": "erp", "erp_price_group": "A1"}.
  final Map<String, dynamic>? metadata;

  /// Operator-facing name, shown wherever a human picks a list. Not addressable — integrations join on `code`.
  final String? name;

  /// Buyer scope: this list prices for buyers of this organization. Beats channel-scoped and open lists, loses to a contact-scoped one.
  final String? organization_id;

  /// Tie-break WITHIN one specificity group, higher first. It never beats specificity: an organization-scoped list at priority 0 still wins over an open list at priority 100. Default 0.
  final int? priority;

  /// Gate: when true the list resolves only for a buyer who has a contact or organization context. An anonymous resolve never matches it, so a tenant that prices only for logged-in customers flags its list and guests fall through to price-on-request rather than to some other list’s number.
  final bool? requires_auth;

  /// Whether the list takes part in resolution at all. Only `active` lists are candidates; `inactive` retires a list without deleting the prices it holds.
  final enums.PriceListStatus? status;

  /// Whether the amounts stored in this list are `net` (tax excluded) or `gross` (tax included) — the one fact a price cannot be without. null inherits the tenant’s `tax_inclusive_default` setting, and the resolve answer names which of the two decided under `tax_basis_source`.
  final enums.PriceListTaxBasis? tax_basis;

  /// LEGACY mirror of `tax_basis`. `false` is the column default, so it is NOT read as anybody having chosen net; only `true` is read as a statement (gross), and only where `tax_basis` is null. Prefer `tax_basis`.
  final bool? tax_included;

  /// When the row last changed. Written by the database, not by the caller.
  final String? updated_at;

  /// Start of the validity window of the WHOLE list; null = open-ended. Outside the window the list is not a candidate at all. The instant compared against is the resolve call’s `at`, echoed as `basis.evaluated_at`.
  final String? valid_from;

  /// End of the validity window of the whole list; null = open-ended. Use it to let a season expire on its own instead of deactivating a list by hand.
  final String? valid_until;

  PriceList({
    this.channel_id,
    this.code,
    this.contact_id,
    this.created_at,
    this.currency,
    this.description,
    this.id,
    this.is_default,
    this.labels,
    this.metadata,
    this.name,
    this.organization_id,
    this.priority,
    this.requires_auth,
    this.status,
    this.tax_basis,
    this.tax_included,
    this.updated_at,
    this.valid_from,
    this.valid_until,
  });

  factory PriceList.fromMap(Map<String, dynamic> map) {
    return PriceList(
      channel_id: map['channel_id']?.toString(),
      code: map['code']?.toString(),
      contact_id: map['contact_id']?.toString(),
      created_at: map['created_at']?.toString(),
      currency: map['currency']?.toString(),
      description: map['description']?.toString(),
      id: map['id']?.toString(),
      is_default: map['is_default'],
      labels: map['labels'],
      metadata: map['metadata'],
      name: map['name']?.toString(),
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
      updated_at: map['updated_at']?.toString(),
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
      "created_at": created_at,
      "currency": currency,
      "description": description,
      "id": id,
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
      "updated_at": updated_at,
      "valid_from": valid_from,
      "valid_until": valid_until,
    };
  }
}
