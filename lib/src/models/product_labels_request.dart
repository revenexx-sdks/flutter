part of '../../models.dart';

///
class ProductLabelsRequest implements Model {
  /// Product ids to name. At most 500.
  final List<String>? ids;

  /// Product SKUs to name. At most 500.
  final List<String>? skus;

  ProductLabelsRequest({
    this.ids,
    this.skus,
  });

  factory ProductLabelsRequest.fromMap(Map<String, dynamic> map) {
    return ProductLabelsRequest(
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
