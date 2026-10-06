part of '../../models.dart';

/// Retention sweep. Previews unless `dry_run` is explicitly false.
class FormSubmissionPruneRequest implements Model {
  /// Default TRUE. Nothing is deleted until this is explicitly false.
  final bool? dry_run;

  /// Narrow the sweep to one form.
  final String? form_slug;

  /// Age threshold. Omit to use the retention floor. A value BELOW the floor is raised to it — the setting is the floor, not a default, and the floor is the LONGEST submission_retention_days configured anywhere in the tenant (see the operation description).
  final int? older_than_days;

  /// Narrow the sweep to one inbox status, e.g. 'spam'.
  final enums.FormSubmissionPruneRequestStatus? status;

  FormSubmissionPruneRequest({
    this.dry_run,
    this.form_slug,
    this.older_than_days,
    this.status,
  });

  factory FormSubmissionPruneRequest.fromMap(Map<String, dynamic> map) {
    return FormSubmissionPruneRequest(
      dry_run: map['dry_run'],
      form_slug: map['form_slug']?.toString(),
      older_than_days: map['older_than_days'],
      status: map['status'] != null
          ? enums.FormSubmissionPruneRequestStatus.values
              .firstWhere((e) => e.value == map['status'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "dry_run": dry_run,
      "form_slug": form_slug,
      "older_than_days": older_than_days,
      "status": status?.value,
    };
  }
}
