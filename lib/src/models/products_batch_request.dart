part of '../../models.dart';

/// 
class ProductsBatchRequest implements Model {
    /// 
    final List<String>? ids;

    /// 
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
