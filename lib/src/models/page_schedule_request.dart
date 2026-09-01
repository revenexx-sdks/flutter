part of '../../models.dart';

/// When this working copy should go live.
class PageScheduleRequest implements Model {
  /// The moment to publish at. Stored on the edit state and echoed back normalized to UTC.
  final String scheduledAt;

  PageScheduleRequest({
    required this.scheduledAt,
  });

  factory PageScheduleRequest.fromMap(Map<String, dynamic> map) {
    return PageScheduleRequest(
      scheduledAt: map['scheduledAt'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "scheduledAt": scheduledAt,
    };
  }
}
