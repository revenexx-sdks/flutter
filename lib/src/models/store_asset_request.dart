part of '../../models.dart';

/// 
class StoreAssetRequest implements Model {
    /// 
    final String? alt_text;

    /// 
    final String? description;

    /// 
    final String? display_name;

    /// 
    final String file;

    /// 
    final String? folder_id;

    /// 
    final bool? keep_archive;

    /// 
    final List<String>? tags;

    /// Archives only: unpack the members after upload (see AssetController).
    final bool? unpack;

    /// 
    final enums.StoreAssetRequestVisibility? visibility;

    StoreAssetRequest({
        this.alt_text,
        this.description,
        this.display_name,
        required this.file,
        this.folder_id,
        this.keep_archive,
        this.tags,
        this.unpack,
        this.visibility,
    });

    factory StoreAssetRequest.fromMap(Map<String, dynamic> map) {
        return StoreAssetRequest(
            alt_text: map['alt_text']?.toString(),
            description: map['description']?.toString(),
            display_name: map['display_name']?.toString(),
            file: map['file'].toString(),
            folder_id: map['folder_id']?.toString(),
            keep_archive: map['keep_archive'],
            tags: List.from(map['tags'] ?? []),
            unpack: map['unpack'],
            visibility: map['visibility'] != null ? enums.StoreAssetRequestVisibility.values.firstWhere((e) => e.value == map['visibility']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "alt_text": alt_text,
            "description": description,
            "display_name": display_name,
            "file": file,
            "folder_id": folder_id,
            "keep_archive": keep_archive,
            "tags": tags,
            "unpack": unpack,
            "visibility": visibility?.value,
        };
    }
}
