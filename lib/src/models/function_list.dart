part of '../../models.dart';

/// Functions List
class FunctionList implements Model {
  /// List of functions.
  final List<Func> functions;

  /// Total number of functions that matched your query.
  final int total;

  FunctionList({
    required this.functions,
    required this.total,
  });

  factory FunctionList.fromMap(Map<String, dynamic> map) {
    return FunctionList(
      functions: List<Func>.from(map['functions'].map((p) => Func.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "functions": functions.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
