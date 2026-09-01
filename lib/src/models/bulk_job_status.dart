part of '../../models.dart';

/// Lifecycle of a `baseline.bulk_jobs` row:
/// `pending → running → completed`, or `partial` (finished with
/// `counts.rejected > 0`), `failed`, or `canceled`.
/// 
class BulkJobStatus implements Model {
    BulkJobStatus(
    );

    factory BulkJobStatus.fromMap(Map<String, dynamic> map) {
        return BulkJobStatus(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
