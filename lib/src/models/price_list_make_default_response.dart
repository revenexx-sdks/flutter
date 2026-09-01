part of '../../models.dart';

/// The list as it now stands, plus whoever lost the flag.
class PriceListMakeDefaultResponse implements Model {
    /// Codes of the lists that lost the flag — empty when this list already held it, which is what makes a repeated call free.
    final List<String>? demoted;

    /// A price list: one currency, one tax basis, one validity window, one buyer scope — and the entries that price items in it. Which list wins for a given buyer is decided by scope first, then priority, then the default flag; see prices.resolve.
    final PriceList? price_list;

    PriceListMakeDefaultResponse({
        this.demoted,
        this.price_list,
    });

    factory PriceListMakeDefaultResponse.fromMap(Map<String, dynamic> map) {
        return PriceListMakeDefaultResponse(
            demoted: List.from(map['demoted'] ?? []),
            price_list: map['price_list'] != null ? PriceList.fromMap(map['price_list']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "demoted": demoted,
            "price_list": price_list?.toMap(),
        };
    }
}
