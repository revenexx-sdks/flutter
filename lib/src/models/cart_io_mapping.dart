part of '../../models.dart';

/// Baseline-IO-compatible column mapping. An empty object (or null) is identity: the full canonical shape, every field under its own name.
class CartIoMapping implements Model {
  /// Renames, in order. On export the row is narrowed to these columns; on import a column that is not listed is ignored. Omit or leave empty for identity.
  final List<CartIoMappingColumn>? columns;

  /// Fields that identify a line in the payload — what the bundled quick-order template sets to ['sku'].
  final List<String>? keys;

  CartIoMapping({
    this.columns,
    this.keys,
  });

  factory CartIoMapping.fromMap(Map<String, dynamic> map) {
    return CartIoMapping(
      columns: map['columns'] != null
          ? List<CartIoMappingColumn>.from(
              map['columns'].map((p) => CartIoMappingColumn.fromMap(p)))
          : null,
      keys: List.from(map['keys'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "columns": columns?.map((p) => p.toMap()).toList(),
      "keys": keys,
    };
  }
}
