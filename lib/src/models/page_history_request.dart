part of '../../models.dart';

/// Where to put the undo pointer.
class PageHistoryRequest implements Model {
  /// The position in the mutation log to materialize at. `-1` undoes everything; the last position redoes everything. Values outside the log are clamped rather than refused.
  final int index;

  /// Which language the returned state should be resolved for.
  final String? langcode;

  PageHistoryRequest({
    required this.index,
    this.langcode,
  });

  factory PageHistoryRequest.fromMap(Map<String, dynamic> map) {
    return PageHistoryRequest(
      index: map['index'],
      langcode: map['langcode']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "index": index,
      "langcode": langcode,
    };
  }
}
