part of '../../models.dart';

///
class FormSubmissionPruneResult implements Model {
  /// Submissions created before this instant match. It is `now - older_than_days`, computed after the retention floor was applied, so it is the honest answer to "what did this call actually consider".
  final String? cutoff;

  /// How many rows this call actually removed — always 0 on a dry run, and at most the 500-row batch size on a real one.
  final int? deleted;

  /// Whether this call was a preview. True — the default — means nothing was deleted and `matched` is what a real run would take.
  final bool? dry_run;

  /// True when the request asked for a shorter age than the floor allows.
  final bool? floor_applied;

  /// How many rows match, ignoring the batch size.
  final int? matched;

  /// The threshold actually applied, after the retention floor.
  final double? older_than_days;

  /// Matched rows left after this batch — call again. Absent on a dry run, which deletes nothing.
  final int? remaining;

  /// The retention floor this sweep honoured: the LONGEST submission_retention_days configured anywhere in the tenant, baseline or market. Not the value the calling market sees — a tenant-wide sweep has to keep the longest promise anybody was given.
  final double? retention_days;

  /// The market whose submission_retention_days set the floor — the merchant's own market CODE — or null when the tenant baseline did. It is there so a merchant can see WHY the sweep would not go younger, since the market that bound it is often not the one the request was made from.
  final String? retention_market;

  /// Up to five matching rows (dry runs only) — id, form_slug and created_at, never the submitted data.
  final List<FormSubmissionPruneSample>? sample;

  FormSubmissionPruneResult({
    this.cutoff,
    this.deleted,
    this.dry_run,
    this.floor_applied,
    this.matched,
    this.older_than_days,
    this.remaining,
    this.retention_days,
    this.retention_market,
    this.sample,
  });

  factory FormSubmissionPruneResult.fromMap(Map<String, dynamic> map) {
    return FormSubmissionPruneResult(
      cutoff: map['cutoff']?.toString(),
      deleted: map['deleted'],
      dry_run: map['dry_run'],
      floor_applied: map['floor_applied'],
      matched: map['matched'],
      older_than_days: map['older_than_days']?.toDouble(),
      remaining: map['remaining'],
      retention_days: map['retention_days']?.toDouble(),
      retention_market: map['retention_market']?.toString(),
      sample: map['sample'] != null
          ? List<FormSubmissionPruneSample>.from(
              map['sample'].map((p) => FormSubmissionPruneSample.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "cutoff": cutoff,
      "deleted": deleted,
      "dry_run": dry_run,
      "floor_applied": floor_applied,
      "matched": matched,
      "older_than_days": older_than_days,
      "remaining": remaining,
      "retention_days": retention_days,
      "retention_market": retention_market,
      "sample": sample?.map((p) => p.toMap()).toList(),
    };
  }
}
