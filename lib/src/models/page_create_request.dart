part of '../../models.dart';

/// A new page. Only the title is yours to supply — everything else has a tenant default behind it.
class PageCreateRequest implements Model {
    /// The page type. Omit to take the default_page_bundle setting.
    final String? bundle;

    /// Page-level blökkli display options as a flat `option key → value` map. Theme-defined; usually left out and set later from the editor.
    final Map<String, dynamic>? hostOptions;

    /// The page's metadata bag (SEO and social fields). Stored and handed back untouched — this app reads no key of it, so the theme decides what goes in.
    final Map<String, dynamic>? meta;

    /// The path segment the storefront routes it under, without a leading slash. Unique per tenant among live pages; omit or send null for a page reached only by id. Nothing here derives one from the title.
    final String? slug;

    /// The language you are authoring in, and the fallback for every later translation. Omit to take the default_source_language setting for the request market.
    final String? sourceLanguage;

    /// What the page is called, in its source language. Shown in the editorial list and searched by `?q=`.
    final String title;

    PageCreateRequest({
        this.bundle,
        this.hostOptions,
        this.meta,
        this.slug,
        this.sourceLanguage,
        required this.title,
    });

    factory PageCreateRequest.fromMap(Map<String, dynamic> map) {
        return PageCreateRequest(
            bundle: map['bundle']?.toString(),
            hostOptions: map['hostOptions'],
            meta: map['meta'],
            slug: map['slug']?.toString(),
            sourceLanguage: map['sourceLanguage']?.toString(),
            title: map['title'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "hostOptions": hostOptions,
            "meta": meta,
            "slug": slug,
            "sourceLanguage": sourceLanguage,
            "title": title,
        };
    }
}
