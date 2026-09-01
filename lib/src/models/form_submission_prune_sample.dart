part of '../../models.dart';

/// One row the sweep would delete, shown so a merchant can recognise what is at stake before turning the preview off. Three columns only — never the submitted data.
class FormSubmissionPruneSample implements Model {
  /// When it arrived — the age this sweep is judging it on.
  final String? created_at;

  /// The form's slug as it stood when this submission arrived, copied onto the row: the inbox filters by form without a join, and a submission still says which form collected it after that form has been renamed. It does not outlive a DELETED form — the foreign key cascades and takes the submission with it. On a write the body's value WINS; omit it and the form's own slug is copied in.
  final String? form_slug;

  /// The submission that would be deleted. Fetch it with GET /v1/forms/submissions/{id} to see what it holds.
  final String? id;

  FormSubmissionPruneSample({
    this.created_at,
    this.form_slug,
    this.id,
  });

  factory FormSubmissionPruneSample.fromMap(Map<String, dynamic> map) {
    return FormSubmissionPruneSample(
      created_at: map['created_at']?.toString(),
      form_slug: map['form_slug']?.toString(),
      id: map['id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "form_slug": form_slug,
      "id": id,
    };
  }
}
