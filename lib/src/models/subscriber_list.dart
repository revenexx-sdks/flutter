part of '../../models.dart';

/// Subscriber list
class SubscriberList implements Model {
  /// List of subscribers.
  final List<Subscriber> subscribers;

  /// Total number of subscribers that matched your query.
  final int total;

  SubscriberList({
    required this.subscribers,
    required this.total,
  });

  factory SubscriberList.fromMap(Map<String, dynamic> map) {
    return SubscriberList(
      subscribers: List<Subscriber>.from(
          map['subscribers'].map((p) => Subscriber.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "subscribers": subscribers.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
