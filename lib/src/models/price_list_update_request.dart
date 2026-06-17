part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class PriceListUpdateRequest implements Model {
    /// Scope: only this channel.
    final String? channel_id;

    /// Unique list code per tenant.
    final String? code;

    /// Scope: only this contact — beats every other scope.
    final String? contact_id;

    /// ISO 4217 code (default EUR) — resolution only considers lists matching the requested currency.
    final String? currency;

    /// 
    final String? description;

    /// Default lists resolve last within their group.
    final bool? is_default;

    /// Localised names ({de, en, …}).
    final Map? labels;

    /// Scope: only this market.
    final String? market_id;

    /// Free-form metadata.
    final Map? metadata;

    /// 
    final String? name;

    /// Scope: only this organization.
    final String? organization_id;

    /// Tie-breaker within a specificity group (higher wins, default 0).
    final int? priority;

    /// Default &#039;active&#039; — only active lists resolve.
    final enums.PriceListStatus? status;

    /// Gross (true) or net (false, default) prices.
    final bool? tax_included;

    /// Validity window start.
    final String? valid_from;

    /// Validity window end.
    final String? valid_until;

    PriceListUpdateRequest({
        this.channel_id,
        this.code,
        this.contact_id,
        this.currency,
        this.description,
        this.is_default,
        this.labels,
        this.market_id,
        this.metadata,
        this.name,
        this.organization_id,
        this.priority,
        this.status,
        this.tax_included,
        this.valid_from,
        this.valid_until,
    });

    factory PriceListUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PriceListUpdateRequest(
            channel_id: map['channel_id']?.toString(),
            code: map['code']?.toString(),
            contact_id: map['contact_id']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            market_id: map['market_id']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            organization_id: map['organization_id']?.toString(),
            priority: map['priority'],
            status: map['status'] != null ? enums.PriceListStatus.values.firstWhere((e) => e.value == map['status']) : null,
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
            "market_id": market_id,
            "metadata": metadata,
            "name": name,
            "organization_id": organization_id,
            "priority": priority,
            "status": status?.value,
            "tax_included": tax_included,
            "valid_from": valid_from,
            "valid_until": valid_until,
        };
    }
}
