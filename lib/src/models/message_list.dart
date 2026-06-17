part of '../../models.dart';

/// Message list
class MessageList implements Model {
    /// List of messages.
    final List<Message> messages;

    /// Total number of messages that matched your query.
    final int total;

    MessageList({
        required this.messages,
        required this.total,
    });

    factory MessageList.fromMap(Map<String, dynamic> map) {
        return MessageList(
            messages: List<Message>.from(map['messages'].map((p) => Message.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "messages": messages.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
