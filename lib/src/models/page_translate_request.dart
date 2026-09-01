part of '../../models.dart';

/// The strings to translate. They are forwarded to the tenant's provider verbatim.
class PageTranslateRequest implements Model {
  /// The strings to translate. This app reads no element of the list — the provider defines the contract, and the blökkli adapter sends the fields below.
  final List<Map>? items;

  PageTranslateRequest({
    this.items,
  });

  factory PageTranslateRequest.fromMap(Map<String, dynamic> map) {
    return PageTranslateRequest(
      items: List.from(map['items'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "items": items,
    };
  }
}
