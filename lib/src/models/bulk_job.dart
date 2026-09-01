part of '../../models.dart';

/// A bulk job as returned by `/bulk-jobs`. Note that the row counts are
/// nested under `counts` — they are not top-level fields — and that the
/// response carries no `tenant_id` (the listing envelope does) and no
/// `updated_at`.
/// 
class BulkJob implements Model {
    /// 
    final String? app;

    /// 
    final String? correlation_id;

    /// 
    final Map? counts;

    /// 
    final String? created_at;

    /// 
    final String? created_by;

    /// 
    final int? duration_ms;

    /// 
    final String? entity;

    /// 
    final String? error_message;

    /// 
    final String? finished_at;

    /// 
    final String? id;

    /// 
    final String? profile_id;

    /// Engine-reported progress. For an export this carries the
    /// `object_key` and `format` the result is written to.
    /// 
    final Map<String, dynamic>? progress;

    /// 
    final String? started_at;

    /// 
    final BulkJobStatus? status;

    /// 
    final BulkJobType? type;

    /// 
    final String? vendor;

    BulkJob({
        this.app,
        this.correlation_id,
        this.counts,
        this.created_at,
        this.created_by,
        this.duration_ms,
        this.entity,
        this.error_message,
        this.finished_at,
        this.id,
        this.profile_id,
        this.progress,
        this.started_at,
        this.status,
        this.type,
        this.vendor,
    });

    factory BulkJob.fromMap(Map<String, dynamic> map) {
        return BulkJob(
            app: map['app']?.toString(),
            correlation_id: map['correlation_id']?.toString(),
            counts: map['counts'],
            created_at: map['created_at']?.toString(),
            created_by: map['created_by']?.toString(),
            duration_ms: map['duration_ms'],
            entity: map['entity']?.toString(),
            error_message: map['error_message']?.toString(),
            finished_at: map['finished_at']?.toString(),
            id: map['id']?.toString(),
            profile_id: map['profile_id']?.toString(),
            progress: map['progress'],
            started_at: map['started_at']?.toString(),
            status: map['status'] != null ? BulkJobStatus.fromMap(map['status']) : null,
            type: map['type'] != null ? BulkJobType.fromMap(map['type']) : null,
            vendor: map['vendor']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "app": app,
            "correlation_id": correlation_id,
            "counts": counts,
            "created_at": created_at,
            "created_by": created_by,
            "duration_ms": duration_ms,
            "entity": entity,
            "error_message": error_message,
            "finished_at": finished_at,
            "id": id,
            "profile_id": profile_id,
            "progress": progress,
            "started_at": started_at,
            "status": status?.toMap(),
            "type": type?.toMap(),
            "vendor": vendor,
        };
    }
}
