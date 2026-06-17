part of '../../models.dart';

/// Partial update — only title, slug, status, meta and bundle are applied; other keys are ignored.
class PageUpdateRequest implements Model {
    /// 
    final String? bundle;

    /// 
    final Map? meta;

    /// 
    final String? slug;

    /// 
    final enums.PageStatus? status;

    /// 
    final String? title;

    PageUpdateRequest({
        this.bundle,
        this.meta,
        this.slug,
        this.status,
        this.title,
    });

    factory PageUpdateRequest.fromMap(Map<String, dynamic> map) {
        return PageUpdateRequest(
            bundle: map['bundle']?.toString(),
            meta: map['meta'],
            slug: map['slug']?.toString(),
            status: map['status'] != null ? enums.PageStatus.values.firstWhere((e) => e.value == map['status']) : null,
            title: map['title']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "meta": meta,
            "slug": slug,
            "status": status?.value,
            "title": title,
        };
    }
}
