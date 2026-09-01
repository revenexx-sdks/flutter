part of '../../models.dart';

/// Identity
class Identity implements Model {
  /// Identity creation date in ISO 8601 format.
  final String $createdAt;

  /// Identity ID.
  final String $id;

  /// Identity update date in ISO 8601 format.
  final String $updatedAt;

  /// Identity Provider.
  final String provider;

  /// Identity Provider Access Token.
  final String providerAccessToken;

  /// The date of when the access token expires in ISO 8601 format.
  final String providerAccessTokenExpiry;

  /// Email of the User in the Identity Provider.
  final String providerEmail;

  /// Identity Provider Refresh Token.
  final String providerRefreshToken;

  /// ID of the User in the Identity Provider.
  final String providerUid;

  /// User ID.
  final String userId;

  Identity({
    required this.$createdAt,
    required this.$id,
    required this.$updatedAt,
    required this.provider,
    required this.providerAccessToken,
    required this.providerAccessTokenExpiry,
    required this.providerEmail,
    required this.providerRefreshToken,
    required this.providerUid,
    required this.userId,
  });

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      provider: map['provider'].toString(),
      providerAccessToken: map['providerAccessToken'].toString(),
      providerAccessTokenExpiry: map['providerAccessTokenExpiry'].toString(),
      providerEmail: map['providerEmail'].toString(),
      providerRefreshToken: map['providerRefreshToken'].toString(),
      providerUid: map['providerUid'].toString(),
      userId: map['userId'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$updatedAt": $updatedAt,
      "provider": provider,
      "providerAccessToken": providerAccessToken,
      "providerAccessTokenExpiry": providerAccessTokenExpiry,
      "providerEmail": providerEmail,
      "providerRefreshToken": providerRefreshToken,
      "providerUid": providerUid,
      "userId": userId,
    };
  }
}
