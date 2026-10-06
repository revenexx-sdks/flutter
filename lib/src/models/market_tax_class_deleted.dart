part of '../../models.dart';

/// Confirmation that the tax class of a market is gone. The row itself is not returned — read it before deleting if you need it.
class MarketTaxClassDeleted implements Model {
  /// Always true — a row that was not there is a 404, not a false.
  final bool? deleted;

  /// The id of the row that was deleted.
  final String? id;

  /// False when the cross-app usage question could not be asked (shipping not installed, or unreachable) — the row was deleted without that guarantee.
  final bool? usage_checked;

  MarketTaxClassDeleted({
    this.deleted,
    this.id,
    this.usage_checked,
  });

  factory MarketTaxClassDeleted.fromMap(Map<String, dynamic> map) {
    return MarketTaxClassDeleted(
      deleted: map['deleted'],
      id: map['id']?.toString(),
      usage_checked: map['usage_checked'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "deleted": deleted,
      "id": id,
      "usage_checked": usage_checked,
    };
  }
}
