part of '../../models.dart';

/// Partial update — omitted fields keep their current value. Every page that references this item renders the new tree the next time it is delivered, which is the whole point of the library and the whole risk of editing one.
class PageLibraryItemUpdateRequest implements Model {
  /// The block type this item instantiates. Changing it moves the item to a different part of the picker.
  final String? bundle;

  /// What the item is called in the picker.
  final String? label;

  /// A block and its whole subtree, serialized. Produced by the editor when a selection is made reusable or saved as a template, and instantiated back into real blocks when one is inserted.
  final PageBlockTree? tree;

  PageLibraryItemUpdateRequest({
    this.bundle,
    this.label,
    this.tree,
  });

  factory PageLibraryItemUpdateRequest.fromMap(Map<String, dynamic> map) {
    return PageLibraryItemUpdateRequest(
      bundle: map['bundle']?.toString(),
      label: map['label']?.toString(),
      tree: map['tree'] != null ? PageBlockTree.fromMap(map['tree']) : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bundle": bundle,
      "label": label,
      "tree": tree?.toMap(),
    };
  }
}
