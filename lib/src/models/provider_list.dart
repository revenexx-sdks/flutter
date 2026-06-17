part of '../../models.dart';

/// Provider list
class ProviderList implements Model {
    /// List of providers.
    final List<Provider> providers;

    /// Total number of providers that matched your query.
    final int total;

    ProviderList({
        required this.providers,
        required this.total,
    });

    factory ProviderList.fromMap(Map<String, dynamic> map) {
        return ProviderList(
            providers: List<Provider>.from(map['providers'].map((p) => Provider.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "providers": providers.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
