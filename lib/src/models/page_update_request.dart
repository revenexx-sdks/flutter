part of '../../models.dart';

/// Partial update — only title, slug, status, meta and bundle are applied; other keys are ignored. The page's CONTENT is never edited here: blocks change through the editor's mutation log.
class PageUpdateRequest implements Model {
    /// The page type. Changing it changes which template the theme renders.
    final String? bundle;

    /// The page's metadata bag. Replaced wholesale, not merged.
    final Map<String, dynamic>? meta;

    /// The path segment the storefront routes it under. Sending a slug another live page holds answers 409; sending null makes the page unreachable by path.
    final String? slug;

    /// The lifecycle status. Setting `published` here does NOT publish content — delivery still needs a revision, which only `POST /pages/editor/{page_id}/publish` writes.
    final enums.PageStatus? status;

    /// The page title in its source language.
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
