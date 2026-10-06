part of '../../models.dart';

/// One page of tax classes of a market, the page it sits on, and the filters that produced it.
class MarketTaxClassList implements Model {
  /// The exact-column filters this call applied, echoed back. Every value is the raw query string, never the column's own type: `?is_default=true` comes back as `"true"`. A `?column=value` naming a column this entity does not have is DROPPED rather than refused — the call answers 200 with the unfiltered list, and the key missing from here is the only way to find out.
  final MarketTaxClassFilter? filter;

  /// The tax classes of a market on this page, in `order` — by `position` ascending unless the call asked otherwise.
  final List<MarketTaxClass>? items;

  /// Where in the result set this answer sits. `limit` and `offset` are the values that were APPLIED, not the ones that were asked for — the data plane clamps rather than refuses, so an out-of-range or unparseable value comes back corrected here instead of as a 400.
  final MarketsPage? page;

  MarketTaxClassList({
    this.filter,
    this.items,
    this.page,
  });

  factory MarketTaxClassList.fromMap(Map<String, dynamic> map) {
    return MarketTaxClassList(
      filter: map['filter'] != null
          ? MarketTaxClassFilter.fromMap(map['filter'])
          : null,
      items: map['items'] != null
          ? List<MarketTaxClass>.from(
              map['items'].map((p) => MarketTaxClass.fromMap(p)))
          : null,
      page: map['page'] != null ? MarketsPage.fromMap(map['page']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "filter": filter?.toMap(),
      "items": items?.map((p) => p.toMap()).toList(),
      "page": page?.toMap(),
    };
  }
}
