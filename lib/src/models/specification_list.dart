part of '../../models.dart';

/// Specifications List
class SpecificationList implements Model {
    /// List of specifications.
    final List<Specification> specifications;

    /// Total number of specifications that matched your query.
    final int total;

    SpecificationList({
        required this.specifications,
        required this.total,
    });

    factory SpecificationList.fromMap(Map<String, dynamic> map) {
        return SpecificationList(
            specifications: List<Specification>.from(map['specifications'].map((p) => Specification.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "specifications": specifications.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
