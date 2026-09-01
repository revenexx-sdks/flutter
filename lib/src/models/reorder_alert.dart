part of '../../models.dart';

///
class ReorderAlert implements Model {
  /// on_hand − reserved: the figure compared against the reorder point. Alerting on AVAILABLE rather than on_hand is the point of this list — a shelf that looks full but is entirely sold is exactly the row a buyer must see.
  final double? available;

  /// That location's code, resolved for the reader so no second call is needed. Null if the location row could not be read.
  final String? location_code;

  /// Whether that location is enabled. A DISABLED location still alerts — its stock is invisible to availability, but the goods are real and somebody has to decide. Null if the location row could not be read.
  final bool? location_enabled;

  /// The location holding it.
  final String? location_id;

  /// What is physically there right now, promised units included.
  final double? on_hand;

  /// The product this row tracks, null when it is tracked by SKU.
  final String? product_id;

  /// The threshold that was applied to this row — its own, or the tenant default.
  final double? reorder_point;

  /// 'row' — the stock row's own threshold. 'default' — the reorder_point_default setting.
  final enums.ReorderPointSource? reorder_point_source;

  /// How much of it is already promised to orders.
  final double? reserved;

  /// How far below the point this row has fallen. The list is sorted by it, worst first.
  final double? shortfall;

  /// The article number this row tracks, null when it is tracked by product id.
  final String? sku;

  /// The stock row that is low — the id to correct or receive against (POST /inventories/stock/{id}/adjust).
  final String? stock_level_id;

  ReorderAlert({
    this.available,
    this.location_code,
    this.location_enabled,
    this.location_id,
    this.on_hand,
    this.product_id,
    this.reorder_point,
    this.reorder_point_source,
    this.reserved,
    this.shortfall,
    this.sku,
    this.stock_level_id,
  });

  factory ReorderAlert.fromMap(Map<String, dynamic> map) {
    return ReorderAlert(
      available: map['available']?.toDouble(),
      location_code: map['location_code']?.toString(),
      location_enabled: map['location_enabled'],
      location_id: map['location_id']?.toString(),
      on_hand: map['on_hand']?.toDouble(),
      product_id: map['product_id']?.toString(),
      reorder_point: map['reorder_point']?.toDouble(),
      reorder_point_source: map['reorder_point_source'] != null
          ? enums.ReorderPointSource.values
              .firstWhere((e) => e.value == map['reorder_point_source'])
          : null,
      reserved: map['reserved']?.toDouble(),
      shortfall: map['shortfall']?.toDouble(),
      sku: map['sku']?.toString(),
      stock_level_id: map['stock_level_id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "available": available,
      "location_code": location_code,
      "location_enabled": location_enabled,
      "location_id": location_id,
      "on_hand": on_hand,
      "product_id": product_id,
      "reorder_point": reorder_point,
      "reorder_point_source": reorder_point_source?.value,
      "reserved": reserved,
      "shortfall": shortfall,
      "sku": sku,
      "stock_level_id": stock_level_id,
    };
  }
}
