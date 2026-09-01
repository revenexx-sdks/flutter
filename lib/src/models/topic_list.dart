part of '../../models.dart';

/// Topic list
class TopicList implements Model {
  /// List of topics.
  final List<Topic> topics;

  /// Total number of topics that matched your query.
  final int total;

  TopicList({
    required this.topics,
    required this.total,
  });

  factory TopicList.fromMap(Map<String, dynamic> map) {
    return TopicList(
      topics: List<Topic>.from(map['topics'].map((p) => Topic.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "topics": topics.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
