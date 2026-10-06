part of '../../models.dart';

///
class ProductGridColumn implements Model {
  /// The key to read out of a row: a column name for the fixed columns, an attribute code for the rest (then it is a key of the row's `attributes` object).
  final String? code;

  /// The attribute's i18n labels, or a plain title for the fixed columns.
  final Map? label;

  /// Where the value comes from: 'column' is a plain products column, 'attribute' a key inside `attribute_values`, 'resolved' something this route computed (the display name).
  final enums.ProductGridColumnSource? source;

  /// Which control renders the cell — the same widget vocabulary `GET /products/attribute-schema` uses, so one renderer serves both.
  final String? type;

  ProductGridColumn({
    this.code,
    this.label,
    this.source,
    this.type,
  });

  factory ProductGridColumn.fromMap(Map<String, dynamic> map) {
    return ProductGridColumn(
      code: map['code']?.toString(),
      label: map['label'],
      source: map['source'] != null
          ? enums.ProductGridColumnSource.values
              .firstWhere((e) => e.value == map['source'])
          : null,
      type: map['type']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "label": label,
      "source": source?.value,
      "type": type,
    };
  }
}
