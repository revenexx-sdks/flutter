part of '../../models.dart';

/// Name the family either way — `family_id` wins when both are sent. The family has to exist already; this route assigns one, it does not create one.
class ProductFamilyAssignRequest implements Model {
  /// Alternative to family_id — a `families.code` this tenant holds, from `GET /products/families`. No example: a code is tenant data, and any value published here names a family somebody does not have.
  final String? family_code;

  /// The family to assign.
  final String? family_id;

  ProductFamilyAssignRequest({
    this.family_code,
    this.family_id,
  });

  factory ProductFamilyAssignRequest.fromMap(Map<String, dynamic> map) {
    return ProductFamilyAssignRequest(
      family_code: map['family_code']?.toString(),
      family_id: map['family_id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "family_code": family_code,
      "family_id": family_id,
    };
  }
}
