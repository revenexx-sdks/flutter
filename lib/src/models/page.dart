part of '../../models.dart';

/// One addressable page of the storefront: its metadata and publish pointer. Its CONTENT is not here — blocks live behind the editor and delivery routes.
class Page implements Model {
    /// Identifiers of findings the blökkli analyze feature was told to stop reporting for this page. Written by the `set_ignored_analyze` mutation and carried through publish, so dismissing a finding survives the next edit.
    final List<String>? analyze_ignored;

    /// The page TYPE, e.g. `standard` or a landing-page type the theme defines. It decides which fields the editor offers and which template the theme renders; the value set belongs to the active theme, not to this app.
    final String? bundle;

    /// When the page was created.
    final String? created_at;

    /// The user id that created the page.
    final String? created_by;

    /// The tombstone. A soft-deleted page is never listed, never delivered and answers 404 — and it drops out of the unique slug index at once, so deleting a page frees its slug immediately.
    final String? deleted_at;

    /// Page-level blökkli display options, as a flat `option key → value` map — the options that belong to the PAGE rather than to a block (background, width, whether the header is shown). The keys are defined by the theme; this app stores whatever the `update_host_options` mutation set.
    final Map<String, dynamic>? host_options;

    /// The page id. Every editor and delivery route addresses a page by it, and it never changes — publishing replaces a page's blocks, never the page.
    final String? id;

    /// The page's free-form metadata bag — SEO fields, social preview data, whatever the theme asks the editor for. Nothing in this app reads a key of it: it is stored, versioned into revisions and handed back to the renderer untouched, so the theme owns its shape.
    final Map<String, dynamic>? meta;

    /// The revision the storefront is currently serving. `null` means nothing has ever been published, and delivery answers 404 for the page even when `status` says `published`.
    final String? published_revision_id;

    /// The path segment the storefront routes this page under, without a leading slash. Unique per tenant among live pages, and `null` for a page that is only ever reached by id. `GET /pages/delivery/page?slug=` matches it first and the translations second.
    final String? slug;

    /// The language the page was authored in. It is the fallback for every field a translation leaves empty, so a page never renders as a hole.
    final String? source_language;

    /// Where the page sits in the editorial lifecycle. Only `published` is ever delivered, and only together with a `published_revision_id`.
    final enums.PageStatus? status;

    /// The page title as an editor typed it, in the page's source language. Publishing overwrites it with the title the edit state carries, so this is always the last published (or last saved) wording.
    final String? title;

    /// When the page last changed. The default sort of `GET /pages/pages` is this column descending, because "what did we touch last" is the question an editorial list is opened with.
    final String? updated_at;

    /// The user id that last changed the page — set by an update, a soft delete and by publishing.
    final String? updated_by;

    Page({
        this.analyze_ignored,
        this.bundle,
        this.created_at,
        this.created_by,
        this.deleted_at,
        this.host_options,
        this.id,
        this.meta,
        this.published_revision_id,
        this.slug,
        this.source_language,
        this.status,
        this.title,
        this.updated_at,
        this.updated_by,
    });

    factory Page.fromMap(Map<String, dynamic> map) {
        return Page(
            analyze_ignored: List.from(map['analyze_ignored'] ?? []),
            bundle: map['bundle']?.toString(),
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            deleted_at: map['deleted_at']?.toString(),
            host_options: map['host_options'],
            id: map['id']?.toString(),
            meta: map['meta'],
            published_revision_id: map['published_revision_id']?.toString(),
            slug: map['slug']?.toString(),
            source_language: map['source_language']?.toString(),
            status: map['status'] != null ? enums.PageStatus.values.firstWhere((e) => e.value == map['status']) : null,
            title: map['title']?.toString(),
            updated_at: map['updated_at']?.toString(),
            updated_by: map['updated_by']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "analyze_ignored": analyze_ignored,
            "bundle": bundle,
            "created_at": created_at,
            "created_by": created_by,
            "deleted_at": deleted_at,
            "host_options": host_options,
            "id": id,
            "meta": meta,
            "published_revision_id": published_revision_id,
            "slug": slug,
            "source_language": source_language,
            "status": status?.value,
            "title": title,
            "updated_at": updated_at,
            "updated_by": updated_by,
        };
    }
}
