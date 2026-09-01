part of '../../models.dart';

/// The identity service's recovery token, minus its secret, plus which mail the customer got. The secret is stripped deliberately — it travels only in the mailed link, and a caller that had both would not need the mail at all. `mail` is `tenant` when this shop's own template went out and `platform` when the messaging service could not be reached and the identity service's built-in mail is the copy the buyer has; the link is the same either way.
class AuthRecoveryResponse implements Model {
  /// The recovery that was created.
  final String? $id;

  /// When the link stops working. The mail says the same thing in words.
  final String? expire;

  /// Which template the buyer received: 'tenant' is this shop's own, 'platform' the identity service's built-in one — the fallback when messaging could not be reached. The link is identical either way, so a reset works in both cases.
  final enums.RecoveryMailSource? mail;

  /// The platform user it belongs to.
  final String? userId;

  final Map<String, dynamic> data;

  AuthRecoveryResponse({
    this.$id,
    this.expire,
    this.mail,
    this.userId,
    required this.data,
  });

  factory AuthRecoveryResponse.fromMap(Map<String, dynamic> map) {
    return AuthRecoveryResponse(
      $id: map['\$id']?.toString(),
      expire: map['expire']?.toString(),
      mail: map['mail'] != null
          ? enums.RecoveryMailSource.values
              .firstWhere((e) => e.value == map['mail'])
          : null,
      userId: map['userId']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "expire": expire,
      "mail": mail?.value,
      "userId": userId,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
