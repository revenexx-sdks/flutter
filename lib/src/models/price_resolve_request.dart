part of '../../models.dart';

/// Buyer context + items. Unpriceable items come back as on_request — a missing price is a first-class state, never 0.
class PriceResolveRequest implements Model {
    /// The instant every validity window — list and entry — is evaluated at (ISO 8601). Default now. This is how a promo price is previewed before it starts, and it is echoed as `basis.evaluated_at`.
    final String? at;

    /// Buyer context: the sales channel. Third scope — beats the open lists, loses to contact and organization.
    final String? channel_id;

    /// Buyer context: the contact this quote is for. The most specific scope — a list naming this contact beats every other list, whatever their priority. Sending it (or organization_id) is also what makes the buyer AUTHENTICATED for `requires_auth` lists and for the tenant’s anonymous_resolve_allowed setting.
    final String? contact_id;

    /// ISO 4217 code the quote is wanted in. ONLY lists in this currency are candidates and nothing is ever converted, so a wrong value here is not a rounding difference — it is no price at all. Omit to take the buyer market’s currency, then the tenant’s default_currency; `basis.currency_source` names which applied.
    final String? currency;

    /// Items to price, at most 200 per call — a whole cart or a whole product listing in one round trip. The answer holds one entry per item, in this order.
    final List<PriceResolveItem> items;

    /// Buyer context: the market, as a uuid pin for older callers. Prefer the `X-Revenexx-Market` header, which carries a market CODE and is what scopes the visible price lists. The market decides the tax rates AND which per-market settings (rounding, tie-break, anonymous access) apply — with several markets and no signal at all the answer says `tax.resolved: false`, `reason: market_required` rather than quoting another market’s VAT.
    final String? market_id;

    /// Buyer context: the organization the buyer belongs to. Second most specific scope; also counts as authenticated.
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
