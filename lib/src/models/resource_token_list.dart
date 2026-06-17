part of '../../models.dart';

/// Resource Tokens List
class ResourceTokenList implements Model {
    /// List of tokens.
    final List<ResourceToken> tokens;

    /// Total number of tokens that matched your query.
    final int total;

    ResourceTokenList({
        required this.tokens,
        required this.total,
    });

    factory ResourceTokenList.fromMap(Map<String, dynamic> map) {
        return ResourceTokenList(
            tokens: List<ResourceToken>.from(map['tokens'].map((p) => ResourceToken.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "tokens": tokens.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
