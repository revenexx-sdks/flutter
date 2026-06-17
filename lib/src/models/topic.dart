part of '../../models.dart';

/// Topic
class Topic implements Model {
    /// Topic creation time in ISO 8601 format.
    final String $createdAt;

    /// Topic ID.
    final String $id;

    /// Topic update date in ISO 8601 format.
    final String $updatedAt;

    /// Total count of email subscribers subscribed to the topic.
    final int emailTotal;

    /// The name of the topic.
    final String name;

    /// Total count of push subscribers subscribed to the topic.
    final int pushTotal;

    /// Total count of SMS subscribers subscribed to the topic.
    final int smsTotal;

    /// Subscribe permissions.
    final List<String> subscribe;

    Topic({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.emailTotal,
        required this.name,
        required this.pushTotal,
        required this.smsTotal,
        required this.subscribe,
    });

    factory Topic.fromMap(Map<String, dynamic> map) {
        return Topic(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            emailTotal: map['emailTotal'],
            name: map['name'].toString(),
            pushTotal: map['pushTotal'],
            smsTotal: map['smsTotal'],
            subscribe: List.from(map['subscribe'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "emailTotal": emailTotal,
            "name": name,
            "pushTotal": pushTotal,
            "smsTotal": smsTotal,
            "subscribe": subscribe,
        };
    }
}
