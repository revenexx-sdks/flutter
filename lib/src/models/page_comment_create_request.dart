part of '../../models.dart';

/// A new comment. Send `blockUuids` for a thread anchored to blocks, `parentUuid` for a reply.
class PageCommentCreateRequest implements Model {
  /// The blocks this thread is about, so the editor can draw a marker next to them. Leave empty for a comment about the page as a whole.
  final List<String>? blockUuids;

  /// The comment, as editor HTML. `<span data-type="mention" data-id="USER_ID">` is what this app reads to decide whom to notify; `<li data-type="taskItem" data-checked="false">` makes a checkbox the toggle-task route can flip.
  final String body;

  /// The root comment this replies to. Omit for a new thread — only roots can be resolved.
  final String? parentUuid;

  PageCommentCreateRequest({
    this.blockUuids,
    required this.body,
    this.parentUuid,
  });

  factory PageCommentCreateRequest.fromMap(Map<String, dynamic> map) {
    return PageCommentCreateRequest(
      blockUuids: List.from(map['blockUuids'] ?? []),
      body: map['body'].toString(),
      parentUuid: map['parentUuid']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "blockUuids": blockUuids,
      "body": body,
      "parentUuid": parentUuid,
    };
  }
}
