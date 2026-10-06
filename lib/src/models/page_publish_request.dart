part of '../../models.dart';

/// What to record about this publication.
class PagePublishRequest implements Model {
  /// Publish despite violations. Without it a page with unresolved violations answers 422 and nothing is written.
  final bool? force;

  /// What to call this publication in the page's history — "Autumn campaign" rather than a timestamp.
  final String? label;

  PagePublishRequest({
    this.force,
    this.label,
  });

  factory PagePublishRequest.fromMap(Map<String, dynamic> map) {
    return PagePublishRequest(
      force: map['force'],
      label: map['label']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "force": force,
      "label": label,
    };
  }
}
