part of '../../models.dart';

/// Sites List
class SiteList implements Model {
  /// List of sites.
  final List<Site> sites;

  /// Total number of sites that matched your query.
  final int total;

  SiteList({
    required this.sites,
    required this.total,
  });

  factory SiteList.fromMap(Map<String, dynamic> map) {
    return SiteList(
      sites: List<Site>.from(map['sites'].map((p) => Site.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "sites": sites.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
