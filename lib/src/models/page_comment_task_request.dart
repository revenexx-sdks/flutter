part of '../../models.dart';

/// Which checkbox to flip.
class PageCommentTaskRequest implements Model {
    /// The task item to toggle, counted in document order from 0. A comment with fewer tasks than that answers 400, and so does anything that is not a whole number at or above 0.
    final int taskIndex;

    PageCommentTaskRequest({
        required this.taskIndex,
    });

    factory PageCommentTaskRequest.fromMap(Map<String, dynamic> map) {
        return PageCommentTaskRequest(
            taskIndex: map['taskIndex'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "taskIndex": taskIndex,
        };
    }
}
