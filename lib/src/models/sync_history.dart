part of '../../models.dart';

///
class SyncHistory implements Model {
  ///
  final int bytes_synced;

  ///
  final String created_at;

  ///
  final int duration_ms;

  ///
  final String error;

  ///
  final int id;

  ///
  final String rule_id;

  ///
  final String run_id;

  ///
  final String source_path;

  ///
  final String status;

  ///
  final String target_asset_id;

  ///
  final String tenant_id;

  SyncHistory({
    required this.bytes_synced,
    required this.created_at,
    required this.duration_ms,
    required this.error,
    required this.id,
    required this.rule_id,
    required this.run_id,
    required this.source_path,
    required this.status,
    required this.target_asset_id,
    required this.tenant_id,
  });

  factory SyncHistory.fromMap(Map<String, dynamic> map) {
    return SyncHistory(
      bytes_synced: map['bytes_synced'],
      created_at: map['created_at'].toString(),
      duration_ms: map['duration_ms'],
      error: map['error'].toString(),
      id: map['id'],
      rule_id: map['rule_id'].toString(),
      run_id: map['run_id'].toString(),
      source_path: map['source_path'].toString(),
      status: map['status'].toString(),
      target_asset_id: map['target_asset_id'].toString(),
      tenant_id: map['tenant_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bytes_synced": bytes_synced,
      "created_at": created_at,
      "duration_ms": duration_ms,
      "error": error,
      "id": id,
      "rule_id": rule_id,
      "run_id": run_id,
      "source_path": source_path,
      "status": status,
      "target_asset_id": target_asset_id,
      "tenant_id": tenant_id,
    };
  }
}
