part of '../../models.dart';

/// One entry of a navigation menu. Stored verbatim, so a theme may carry extra keys of its own alongside these.
class PageMenuItem implements Model {
  /// Sub-entries. This is how a two-level main navigation or a grouped footer is stored.
  final List<Map>? items;

  /// The words a visitor clicks.
  final String? label;

  /// Where the entry goes: a page slug this app serves, a path the theme routes, or an absolute URL to somewhere else.
  final String? to;

  final Map<String, dynamic> data;

  PageMenuItem({
    this.items,
    this.label,
    this.to,
    required this.data,
  });

  factory PageMenuItem.fromMap(Map<String, dynamic> map) {
    return PageMenuItem(
      items: List.from(map['items'] ?? []),
      label: map['label']?.toString(),
      to: map['to']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "items": items,
      "label": label,
      "to": to,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
