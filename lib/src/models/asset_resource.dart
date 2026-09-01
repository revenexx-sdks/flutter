part of '../../models.dart';

/// 
class AssetResource implements Model {
    /// 
    final String alt_text;

    /// 
    final String content_hash;

    /// 
    final String created_at;

    /// 
    final String deleted_at;

    /// 
    final String description;

    /// 
    final String display_name;

    /// 
    final String dominant_color;

    /// 
    final int duration_ms;

    /// 
    final String folder_id;

    /// 
    final int height;

    /// 
    final String id;

    /// 
    final String kind;

    /// 
    final List metadata;

    /// 
    final String mime_type;

    /// 
    final String model_url;

    /// 
    final String original_name;

    /// 
    final int page_count;

    /// 
    final String path_name;

    /// 3D derivatives (null unless rendered): preview image + .glb mesh.
    final String preview_url;

    /// 
    final String processed_at;

    /// 
    final int size_bytes;

    /// 
    final String status;

    /// 
    final List tags;

    /// 
    final String tenant_id;

    /// 
    final String updated_at;

    /// Null for a private asset — it is only reachable through a signed
    /// URL, so there is no path-addressed public URL to hand out.
    final String url;

    /// 
    final String usdz_url;

    /// 
    final String visibility;

    /// 
    final int width;

    AssetResource({
        required this.alt_text,
        required this.content_hash,
        required this.created_at,
        required this.deleted_at,
        required this.description,
        required this.display_name,
        required this.dominant_color,
        required this.duration_ms,
        required this.folder_id,
        required this.height,
        required this.id,
        required this.kind,
        required this.metadata,
        required this.mime_type,
        required this.model_url,
        required this.original_name,
        required this.page_count,
        required this.path_name,
        required this.preview_url,
        required this.processed_at,
        required this.size_bytes,
        required this.status,
        required this.tags,
        required this.tenant_id,
        required this.updated_at,
        required this.url,
        required this.usdz_url,
        required this.visibility,
        required this.width,
    });

    factory AssetResource.fromMap(Map<String, dynamic> map) {
        return AssetResource(
            alt_text: map['alt_text'].toString(),
            content_hash: map['content_hash'].toString(),
            created_at: map['created_at'].toString(),
            deleted_at: map['deleted_at'].toString(),
            description: map['description'].toString(),
            display_name: map['display_name'].toString(),
            dominant_color: map['dominant_color'].toString(),
            duration_ms: map['duration_ms'],
            folder_id: map['folder_id'].toString(),
            height: map['height'],
            id: map['id'].toString(),
            kind: map['kind'].toString(),
            metadata: List.from(map['metadata'] ?? []),
            mime_type: map['mime_type'].toString(),
            model_url: map['model_url'].toString(),
            original_name: map['original_name'].toString(),
            page_count: map['page_count'],
            path_name: map['path_name'].toString(),
            preview_url: map['preview_url'].toString(),
            processed_at: map['processed_at'].toString(),
            size_bytes: map['size_bytes'],
            status: map['status'].toString(),
            tags: List.from(map['tags'] ?? []),
            tenant_id: map['tenant_id'].toString(),
            updated_at: map['updated_at'].toString(),
            url: map['url'].toString(),
            usdz_url: map['usdz_url'].toString(),
            visibility: map['visibility'].toString(),
            width: map['width'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "alt_text": alt_text,
            "content_hash": content_hash,
            "created_at": created_at,
            "deleted_at": deleted_at,
            "description": description,
            "display_name": display_name,
            "dominant_color": dominant_color,
            "duration_ms": duration_ms,
            "folder_id": folder_id,
            "height": height,
            "id": id,
            "kind": kind,
            "metadata": metadata,
            "mime_type": mime_type,
            "model_url": model_url,
            "original_name": original_name,
            "page_count": page_count,
            "path_name": path_name,
            "preview_url": preview_url,
            "processed_at": processed_at,
            "size_bytes": size_bytes,
            "status": status,
            "tags": tags,
            "tenant_id": tenant_id,
            "updated_at": updated_at,
            "url": url,
            "usdz_url": usdz_url,
            "visibility": visibility,
            "width": width,
        };
    }
}
