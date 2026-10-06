part of '../../models.dart';

/// One reusable block. Every page that references it renders THIS tree, so editing the item changes every placement at once.
class LibraryItem implements Model {
  /// The block type this item instantiates. The library picker filters by it, so an item only ever appears where its bundle is allowed. Theme-defined.
  final String? bundle;

  /// When the item entered the library.
  final String? created_at;

  /// The user id that made the block reusable.
  final String? created_by;

  /// The tombstone. A soft-deleted item is never listed or handed out, and a block still referencing it keeps rendering its own last state rather than breaking.
  final String? deleted_at;

  /// The library item id. A block references it to become an instance of the item rather than a copy.
  final String? id;

  /// What the item is called in the library picker. This is the only thing an editor sees before inserting it, so it carries the whole description.
  final String? label;

  /// The block and everything under it, serialized. This is the payload: every page that references the item renders THIS tree, so editing it here changes every placement at once.
  final PageBlockTree? tree;

  /// When the item last changed — i.e. when every page referencing it last changed with it.
  final String? updated_at;

  LibraryItem({
    this.bundle,
    this.created_at,
    this.created_by,
    this.deleted_at,
    this.id,
    this.label,
    this.tree,
    this.updated_at,
  });

  factory LibraryItem.fromMap(Map<String, dynamic> map) {
    return LibraryItem(
      bundle: map['bundle']?.toString(),
      created_at: map['created_at']?.toString(),
      created_by: map['created_by']?.toString(),
      deleted_at: map['deleted_at']?.toString(),
      id: map['id']?.toString(),
      label: map['label']?.toString(),
      tree: map['tree'] != null ? PageBlockTree.fromMap(map['tree']) : null,
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bundle": bundle,
      "created_at": created_at,
      "created_by": created_by,
      "deleted_at": deleted_at,
      "id": id,
      "label": label,
      "tree": tree?.toMap(),
      "updated_at": updated_at,
    };
  }
}
