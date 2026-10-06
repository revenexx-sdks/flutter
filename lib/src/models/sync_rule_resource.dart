part of '../../models.dart';

///
class SyncRuleResource implements Model {
  ///
  final String created_at;

  ///
  final bool enabled;

  ///
  final String id;

  ///
  final String last_run_at;

  ///
  final List options;

  ///
  final String schedule;

  ///
  final String sftp_account_id;

  ///
  final String source_path;

  ///
  final String target_folder_id;

  ///
  final String tenant_id;

  SyncRuleResource({
    required this.created_at,
    required this.enabled,
    required this.id,
    required this.last_run_at,
    required this.options,
    required this.schedule,
    required this.sftp_account_id,
    required this.source_path,
    required this.target_folder_id,
    required this.tenant_id,
  });

  factory SyncRuleResource.fromMap(Map<String, dynamic> map) {
    return SyncRuleResource(
      created_at: map['created_at'].toString(),
      enabled: map['enabled'],
      id: map['id'].toString(),
      last_run_at: map['last_run_at'].toString(),
      options: List.from(map['options'] ?? []),
      schedule: map['schedule'].toString(),
      sftp_account_id: map['sftp_account_id'].toString(),
      source_path: map['source_path'].toString(),
      target_folder_id: map['target_folder_id'].toString(),
      tenant_id: map['tenant_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "enabled": enabled,
      "id": id,
      "last_run_at": last_run_at,
      "options": options,
      "schedule": schedule,
      "sftp_account_id": sftp_account_id,
      "source_path": source_path,
      "target_folder_id": target_folder_id,
      "tenant_id": tenant_id,
    };
  }
}
