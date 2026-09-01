part of '../../models.dart';

/// The exact-column filters this call was understood to carry, verbatim as they arrived. A query parameter that is not a column of `assets` — `?status=`, a typo, a filter another entity has — is DROPPED and does not appear here, and the list comes back unfiltered. This object is the only way to tell that apart from "nothing matched".
class AssetsFilter implements Model {
  /// The literal `?asset_family_id=` value this call was understood to carry.
  final String? asset_family_id;

  /// The literal `?attribute_values=` value this call was understood to carry.
  final String? attribute_values;

  /// The literal `?code=` value this call was understood to carry.
  final String? code;

  /// The literal `?created_at=` value this call was understood to carry.
  final String? created_at;

  /// The literal `?delivery_path=` value this call was understood to carry.
  final String? delivery_path;

  /// The literal `?external_url=` value this call was understood to carry.
  final String? external_url;

  /// The literal `?id=` value this call was understood to carry.
  final String? id;

  /// The literal `?source=` value this call was understood to carry.
  final String? source;

  /// The literal `?storage_asset_id=` value this call was understood to carry.
  final String? storage_asset_id;

  /// The literal `?updated_at=` value this call was understood to carry.
  final String? updated_at;

  final Map<String, dynamic> data;

  AssetsFilter({
    this.asset_family_id,
    this.attribute_values,
    this.code,
    this.created_at,
    this.delivery_path,
    this.external_url,
    this.id,
    this.source,
    this.storage_asset_id,
    this.updated_at,
    required this.data,
  });

  factory AssetsFilter.fromMap(Map<String, dynamic> map) {
    return AssetsFilter(
      asset_family_id: map['asset_family_id']?.toString(),
      attribute_values: map['attribute_values']?.toString(),
      code: map['code']?.toString(),
      created_at: map['created_at']?.toString(),
      delivery_path: map['delivery_path']?.toString(),
      external_url: map['external_url']?.toString(),
      id: map['id']?.toString(),
      source: map['source']?.toString(),
      storage_asset_id: map['storage_asset_id']?.toString(),
      updated_at: map['updated_at']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "asset_family_id": asset_family_id,
      "attribute_values": attribute_values,
      "code": code,
      "created_at": created_at,
      "delivery_path": delivery_path,
      "external_url": external_url,
      "id": id,
      "source": source,
      "storage_asset_id": storage_asset_id,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
