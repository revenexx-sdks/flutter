part of '../../models.dart';

/// The new body. Nothing else about a comment is editable.
class PageCommentUpdateRequest implements Model {
  /// The comment, as editor HTML. Replaces the old body completely.
  final String body;

  PageCommentUpdateRequest({
    required this.body,
  });

  factory PageCommentUpdateRequest.fromMap(Map<String, dynamic> map) {
    return PageCommentUpdateRequest(
      body: map['body'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "body": body,
    };
  }
}
