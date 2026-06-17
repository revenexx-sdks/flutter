part of '../../models.dart';

/// Subscriber
class Subscriber implements Model {
    /// Subscriber creation time in ISO 8601 format.
    final String $createdAt;

    /// Subscriber ID.
    final String $id;

    /// Subscriber update date in ISO 8601 format.
    final String $updatedAt;

    /// The target provider type. Can be one of the following: `email`, `sms` or `push`.
    final String providerType;

    /// Target.
    final Target target;

    /// Target ID.
    final String targetId;

    /// Topic ID.
    final String topicId;

    /// Topic ID.
    final String userId;

    /// User Name.
    final String userName;

    Subscriber({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.providerType,
        required this.target,
        required this.targetId,
        required this.topicId,
        required this.userId,
        required this.userName,
    });

    factory Subscriber.fromMap(Map<String, dynamic> map) {
        return Subscriber(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            providerType: map['providerType'].toString(),
            target: Target.fromMap(map['target']),
            targetId: map['targetId'].toString(),
            topicId: map['topicId'].toString(),
            userId: map['userId'].toString(),
            userName: map['userName'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "providerType": providerType,
            "target": target.toMap(),
            "targetId": targetId,
            "topicId": topicId,
            "userId": userId,
            "userName": userName,
        };
    }
}
