part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AssetFamiliesUpdateRequest implements Model {
  /// The asset family's stable identifier — a class of media with one shared shape. Unique per tenant.
  final String? code;

  /// What the asset family is called, per language tag.
  final Map? labels;

  /// How a file of this family is named, so an import can bind a file to a product without a mapping table. `source` is the product value the file name is built from, `pattern` how it is assembled, `allowed_extensions` what may be uploaded.
  final Map? naming_convention;

  AssetFamiliesUpdateRequest({
    this.code,
    this.labels,
    this.naming_convention,
  });

  factory AssetFamiliesUpdateRequest.fromMap(Map<String, dynamic> map) {
    return AssetFamiliesUpdateRequest(
      code: map['code']?.toString(),
      labels: map['labels'],
      naming_convention: map['naming_convention'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "labels": labels,
      "naming_convention": naming_convention,
    };
  }
}
