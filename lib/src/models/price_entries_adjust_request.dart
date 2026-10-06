part of '../../models.dart';

/// Change every priced entry of a list at once. Send 'percent' OR 'amount', never both. On-request entries are never touched — a percentage of "ask us" is not a number.
class PriceEntriesAdjustRequest implements Model {
  /// Absolute change added to every unit price, in the list's currency.
  final double? amount;

  /// true writes nothing and answers the same preview — what the Cockpit dialog shows before it commits.
  final bool? dry_run;

  /// Relative change in percent: 5 raises by 5 %, -10 cuts by 10 %.
  final double? percent;

  /// Ending the computed prices snap to (nearest match). Omit to use the tenant's bulk_adjust_rounding setting.
  final enums.PriceEndingRule? rounding;

  /// Restrict the change to entries whose SKU starts with this (a prefix, case-sensitive, no wildcards). Entries identified only by product_id never match a prefix. Omit to change the whole list.
  final String? sku_prefix;

  PriceEntriesAdjustRequest({
    this.amount,
    this.dry_run,
    this.percent,
    this.rounding,
    this.sku_prefix,
  });

  factory PriceEntriesAdjustRequest.fromMap(Map<String, dynamic> map) {
    return PriceEntriesAdjustRequest(
      amount: map['amount']?.toDouble(),
      dry_run: map['dry_run'],
      percent: map['percent']?.toDouble(),
      rounding: map['rounding'] != null
          ? enums.PriceEndingRule.values
              .firstWhere((e) => e.value == map['rounding'])
          : null,
      sku_prefix: map['sku_prefix']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "amount": amount,
      "dry_run": dry_run,
      "percent": percent,
      "rounding": rounding?.value,
      "sku_prefix": sku_prefix,
    };
  }
}
