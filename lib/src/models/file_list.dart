part of '../../models.dart';

/// Files List
class FileList implements Model {
  /// List of files.
  final List<File> files;

  /// Total number of files that matched your query.
  final int total;

  FileList({
    required this.files,
    required this.total,
  });

  factory FileList.fromMap(Map<String, dynamic> map) {
    return FileList(
      files: List<File>.from(map['files'].map((p) => File.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "files": files.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
