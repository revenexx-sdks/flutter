part of '../../models.dart';

///
class FormSubmissionDeleteResult implements Model {
  /// Always true — the row is gone. A submission that was not there answers 404 instead, so this is never false.
  final bool? deleted;

  /// The submission that was removed, echoed from the path.
  final String? id;

  FormSubmissionDeleteResult({
    this.deleted,
    this.id,
  });

  factory FormSubmissionDeleteResult.fromMap(Map<String, dynamic> map) {
    return FormSubmissionDeleteResult(
      deleted: map['deleted'],
      id: map['id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "deleted": deleted,
      "id": id,
    };
  }
}
