part of '../../models.dart';

/// Message
class Message2 implements Model {
  /// Message creation time in ISO 8601 format.
  final String $createdAt;

  /// Message ID.
  final String $id;

  /// Message update date in ISO 8601 format.
  final String $updatedAt;

  /// Data of the message.
  final Map<String, dynamic> data;

  /// The time when the message was delivered.
  final String? deliveredAt;

  /// Number of recipients the message was delivered to.
  final int deliveredTotal;

  /// Delivery errors if any.
  final List<String>? deliveryErrors;

  /// Message provider type.
  final String providerType;

  /// The scheduled time for message.
  final String? scheduledAt;

  /// Status of delivery.
  final enums.Message2Status status;

  /// Target IDs set as recipients.
  final List<String> targets;

  /// Topic IDs set as recipients.
  final List<String> topics;

  /// User IDs set as recipients.
  final List<String> users;

  Message2({
    required this.$createdAt,
    required this.$id,
    required this.$updatedAt,
    required this.data,
    this.deliveredAt,
    required this.deliveredTotal,
    this.deliveryErrors,
    required this.providerType,
    this.scheduledAt,
    required this.status,
    required this.targets,
    required this.topics,
    required this.users,
  });

  factory Message2.fromMap(Map<String, dynamic> map) {
    return Message2(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      data: map['data'],
      deliveredAt: map['deliveredAt']?.toString(),
      deliveredTotal: map['deliveredTotal'],
      deliveryErrors: List.from(map['deliveryErrors'] ?? []),
      providerType: map['providerType'].toString(),
      scheduledAt: map['scheduledAt']?.toString(),
      status: enums.Message2Status.values
          .firstWhere((e) => e.value == map['status']),
      targets: List.from(map['targets'] ?? []),
      topics: List.from(map['topics'] ?? []),
      users: List.from(map['users'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$updatedAt": $updatedAt,
      "data": data,
      "deliveredAt": deliveredAt,
      "deliveredTotal": deliveredTotal,
      "deliveryErrors": deliveryErrors,
      "providerType": providerType,
      "scheduledAt": scheduledAt,
      "status": status.value,
      "targets": targets,
      "topics": topics,
      "users": users,
    };
  }
}
