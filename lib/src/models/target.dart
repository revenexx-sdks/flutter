part of '../../models.dart';

/// Target
class Target implements Model {
  /// Target creation time in ISO 8601 format.
  final String $createdAt;

  /// Target ID.
  final String $id;

  /// Target update date in ISO 8601 format.
  final String $updatedAt;

  /// Is the target expired.
  final bool expired;

  /// The target identifier.
  final String identifier;

  /// Target Name.
  final String name;

  /// Provider ID.
  final String? providerId;

  /// The target provider type. Can be one of the following: `email`, `sms` or `push`.
  final String providerType;

  /// User ID.
  final String userId;

  Target({
    required this.$createdAt,
    required this.$id,
    required this.$updatedAt,
    required this.expired,
    required this.identifier,
    required this.name,
    this.providerId,
    required this.providerType,
    required this.userId,
  });

  factory Target.fromMap(Map<String, dynamic> map) {
    return Target(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      expired: map['expired'],
      identifier: map['identifier'].toString(),
      name: map['name'].toString(),
      providerId: map['providerId']?.toString(),
      providerType: map['providerType'].toString(),
      userId: map['userId'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$updatedAt": $updatedAt,
      "expired": expired,
      "identifier": identifier,
      "name": name,
      "providerId": providerId,
      "providerType": providerType,
      "userId": userId,
    };
  }
}
