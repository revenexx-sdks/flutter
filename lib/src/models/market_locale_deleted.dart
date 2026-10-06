part of '../../models.dart';

/// Confirmation that the locale of a market is gone. The row itself is not returned — read it before deleting if you need it.
class MarketLocaleDeleted implements Model {
  /// Always true — a row that was not there is a 404, not a false.
  final bool? deleted;

  /// The id of the row that was deleted.
  final String? id;

  MarketLocaleDeleted({
    this.deleted,
    this.id,
  });

  factory MarketLocaleDeleted.fromMap(Map<String, dynamic> map) {
    return MarketLocaleDeleted(
      deleted: map['deleted'],
      id: map['id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "deleted": deleted,
      "id": id,
    };
  }
}
