part of '../../models.dart';

/// How long the link should live.
class PagePreviewGrantRequest implements Model {
  /// Hours until the link expires. Defaults to 72. After that `GET /pages/delivery/preview/{token}` answers 410 rather than 404, so the holder can tell "expired" from "wrong link".
  final int? ttlHours;

  PagePreviewGrantRequest({
    this.ttlHours,
  });

  factory PagePreviewGrantRequest.fromMap(Map<String, dynamic> map) {
    return PagePreviewGrantRequest(
      ttlHours: map['ttlHours'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "ttlHours": ttlHours,
    };
  }
}
