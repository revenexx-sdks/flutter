part of '../../models.dart';

/// The row is gone. Deleting a price list cascades to its entries.
class PriceDeleted implements Model {
  /// Always true — a row that was not there answers 404 instead.
  final bool? deleted;

  /// The row that was removed.
  final String? id;

  PriceDeleted({
    this.deleted,
    this.id,
  });

  factory PriceDeleted.fromMap(Map<String, dynamic> map) {
    return PriceDeleted(
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
