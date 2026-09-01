part of '../../models.dart';

///
class FolderResource implements Model {
  ///
  final String created_at;

  ///
  final String id;

  ///
  final bool is_system;

  ///
  final String name;

  ///
  final String parent_id;

  ///
  final String path;

  ///
  final String tenant_id;

  ///
  final String updated_at;

  FolderResource({
    required this.created_at,
    required this.id,
    required this.is_system,
    required this.name,
    required this.parent_id,
    required this.path,
    required this.tenant_id,
    required this.updated_at,
  });

  factory FolderResource.fromMap(Map<String, dynamic> map) {
    return FolderResource(
      created_at: map['created_at'].toString(),
      id: map['id'].toString(),
      is_system: map['is_system'],
      name: map['name'].toString(),
      parent_id: map['parent_id'].toString(),
      path: map['path'].toString(),
      tenant_id: map['tenant_id'].toString(),
      updated_at: map['updated_at'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "id": id,
      "is_system": is_system,
      "name": name,
      "parent_id": parent_id,
      "path": path,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
    };
  }
}
