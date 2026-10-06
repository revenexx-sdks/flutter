part of '../../models.dart';

/// Name the products either way, or both ways. Send at least one non-empty list; the two are unioned and a product named twice comes back once.
class ProductsBatchRequest implements Model {
  /// Product ids, when the caller already holds them.
  final List<String>? ids;

  /// Product SKUs — the identifier a foreign system carries, which is why this route exists at all.
  final List<String>? skus;

  ProductsBatchRequest({
    this.ids,
    this.skus,
  });

  factory ProductsBatchRequest.fromMap(Map<String, dynamic> map) {
    return ProductsBatchRequest(
      ids: List.from(map['ids'] ?? []),
      skus: List.from(map['skus'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "ids": ids,
      "skus": skus,
    };
  }
}
