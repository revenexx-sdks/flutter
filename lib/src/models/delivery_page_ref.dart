part of '../../models.dart';

/// Just enough of a published page to link to it. The block tree is not here — fetch it with `GET /pages/delivery/page`.
class DeliveryPageRef implements Model {
  /// The page type, so a sitemap can group or a picker can filter.
  final String? bundle;

  /// The page id, usable as `?id=` on the delivery route.
  final String? id;

  /// The path segment to build the URL from. `null` for a page reachable only by id, which a sitemap should skip.
  final String? slug;

  /// The page title in its source language — this projection is not language-resolved.
  final String? title;

  DeliveryPageRef({
    this.bundle,
    this.id,
    this.slug,
    this.title,
  });

  factory DeliveryPageRef.fromMap(Map<String, dynamic> map) {
    return DeliveryPageRef(
      bundle: map['bundle']?.toString(),
      id: map['id']?.toString(),
      slug: map['slug']?.toString(),
      title: map['title']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bundle": bundle,
      "id": id,
      "slug": slug,
      "title": title,
    };
  }
}
