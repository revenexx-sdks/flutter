part of '../../models.dart';

/// Buyer context + items. Unpriceable items come back as on_request — a missing price is a first-class state, never 0.
class PriceResolveRequest implements Model {
    /// Point in time for validity windows (ISO 8601 timestamp, default now).
    final String? at;

    /// Buyer context: channel.
    final String? channel_id;

    /// Buyer context: contact — most specific scope.
    final String? contact_id;

    /// ISO 4217 code (default EUR) — only lists in this currency resolve.
    final String? currency;

    /// Items to price (at most 200 per call).
    final List<PriceResolveItem> items;

    /// Buyer context: market.
    final String? market_id;

    /// Buyer context: organization.
    final String? organization_id;

    PriceResolveRequest({
        this.at,
        this.channel_id,
        this.contact_id,
        this.currency,
        required this.items,
        this.market_id,
        this.organization_id,
    });

    factory PriceResolveRequest.fromMap(Map<String, dynamic> map) {
        return PriceResolveRequest(
            at: map['at']?.toString(),
            channel_id: map['channel_id']?.toString(),
            contact_id: map['contact_id']?.toString(),
            currency: map['currency']?.toString(),
            items: List<PriceResolveItem>.from(map['items'].map((p) => PriceResolveItem.fromMap(p))),
            market_id: map['market_id']?.toString(),
            organization_id: map['organization_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "at": at,
            "channel_id": channel_id,
            "contact_id": contact_id,
            "currency": currency,
            "items": items.map((p) => p.toMap()).toList(),
            "market_id": market_id,
            "organization_id": organization_id,
        };
    }
}
