part of '../../models.dart';

/// The preferences to store for the calling user.
class PageUserSettingsRequest implements Model {
  /// The whole preferences bag — replaced, not merged, so send all of it. Its keys vary by the editor build and this app reads none of them. Null or omitted stores `{}`, which is how a user resets their editor.
  final Map<String, dynamic>? settings;

  PageUserSettingsRequest({
    this.settings,
  });

  factory PageUserSettingsRequest.fromMap(Map<String, dynamic> map) {
    return PageUserSettingsRequest(
      settings: map['settings'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "settings": settings,
    };
  }
}
