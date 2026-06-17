part of '../../models.dart';

/// Currencies List
class CurrencyList implements Model {
    /// List of currencies.
    final List<Currency> currencies;

    /// Total number of currencies that matched your query.
    final int total;

    CurrencyList({
        required this.currencies,
        required this.total,
    });

    factory CurrencyList.fromMap(Map<String, dynamic> map) {
        return CurrencyList(
            currencies: List<Currency>.from(map['currencies'].map((p) => Currency.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "currencies": currencies.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
