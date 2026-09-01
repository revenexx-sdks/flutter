part of '../../models.dart';

/// The price list this answer came out of — enough to link to it or to explain the number to a merchant ("this came from the dealer list").
class PriceListRef implements Model {
    /// The list’s unique per-tenant code.
    final String? code;

    /// The list, by id — the same id `GET /prices/lists/{id}` takes.
    final String? id;

    PriceListRef({
        this.code,
        this.id,
    });

    factory PriceListRef.fromMap(Map<String, dynamic> map) {
        return PriceListRef(
            code: map['code']?.toString(),
            id: map['id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "id": id,
        };
    }
}
