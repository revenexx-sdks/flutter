part of '../../models.dart';

/// 
class Page implements Model {
    /// 
    final Map? analyze_ignored;

    /// 
    final String? bundle;

    /// 
    final String? created_at;

    /// 
    final String? created_by;

    /// 
    final String? deleted_at;

    /// 
    final Map? host_options;

    /// 
    final String? id;

    /// 
    final Map? meta;

    /// 
    final String? published_revision_id;

    /// 
    final String? slug;

    /// 
    final String? source_language;

    /// 
    final String? status;

    /// 
    final String? title;

    /// 
    final String? updated_at;

    /// 
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
            analyze_ignored: map['analyze_ignored'],
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
            status: map['status']?.toString(),
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
            "status": status,
            "title": title,
            "updated_at": updated_at,
            "updated_by": updated_by,
        };
    }
}
