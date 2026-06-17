part of '../../models.dart';

/// 
class PageCreateRequest implements Model {
    /// 
    final String? bundle;

    /// 
    final Map? hostOptions;

    /// 
    final Map? meta;

    /// 
    final String? slug;

    /// 
    final String? sourceLanguage;

    /// 
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
