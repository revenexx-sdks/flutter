part of '../../models.dart';

/// Where the value lives. Absent on an app whose custom fields are plain columns — then the field name IS the column.
class AttributeFieldStorage implements Model {
  /// Which scope bucket this attribute writes to, implied by localizable/scopable.
  final enums.AttributeValueBucket? bucket;

  /// The jsonb column holding the values (`attribute_values`).
  final String? column;

  /// The exact key path for the requested context, or null when the request named no locale/channel and the bucket needs one. Null means: read-only until a context is chosen.
  final List<String>? path;

  AttributeFieldStorage({
    this.bucket,
    this.column,
    this.path,
  });

  factory AttributeFieldStorage.fromMap(Map<String, dynamic> map) {
    return AttributeFieldStorage(
      bucket: map['bucket'] != null
          ? enums.AttributeValueBucket.values
              .firstWhere((e) => e.value == map['bucket'])
          : null,
      column: map['column']?.toString(),
      path: List.from(map['path'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "bucket": bucket?.value,
      "column": column,
      "path": path,
    };
  }
}
