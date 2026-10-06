part of '../../models.dart';

/// Every comment of the page, roots and replies flat in one list, oldest first — the editor builds the threads from `parentUuid`. Every write route answers this same full list rather than the row it changed.
class PageCommentList implements Model {
  /// The page's comments, oldest first.
  final List<PageCommentItem>? items;

  PageCommentList({
    this.items,
  });

  factory PageCommentList.fromMap(Map<String, dynamic> map) {
    return PageCommentList(
      items: map['items'] != null
          ? List<PageCommentItem>.from(
              map['items'].map((p) => PageCommentItem.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "items": items?.map((p) => p.toMap()).toList(),
    };
  }
}
