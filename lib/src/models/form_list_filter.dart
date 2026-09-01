part of '../../models.dart';

/// The exact-column filters this call was understood to carry, echoed with the values as they arrived. A query parameter that is not a filterable column of this entity is DROPPED rather than refused, and is simply missing here — so an empty object next to a query string that had a filter in it means the filter was misspelled, and is the only way to tell that from a filter that matched nothing.
class FormListFilter implements Model {
  /// The `created_at` filter, verbatim as the query string carried it. A string here whatever the column's own type.
  final String? created_at;

  /// The `id` filter, verbatim as the query string carried it. A string here whatever the column's own type.
  final String? id;

  /// The `name` filter, verbatim as the query string carried it. A string here whatever the column's own type.
  final String? name;

  /// The `slug` filter, verbatim as the query string carried it. A string here whatever the column's own type.
  final String? slug;

  /// The `status` filter, verbatim as the query string carried it. A string here whatever the column's own type — and NOT necessarily one of the permitted values: `?status=zzz` is echoed back unchanged and matches nothing, which is the point of the echo.
  final String? status;

  /// The `updated_at` filter, verbatim as the query string carried it. A string here whatever the column's own type.
  final String? updated_at;

  final Map<String, dynamic> data;

  FormListFilter({
    this.created_at,
    this.id,
    this.name,
    this.slug,
    this.status,
    this.updated_at,
    required this.data,
  });

  factory FormListFilter.fromMap(Map<String, dynamic> map) {
    return FormListFilter(
      created_at: map['created_at']?.toString(),
      id: map['id']?.toString(),
      name: map['name']?.toString(),
      slug: map['slug']?.toString(),
      status: map['status']?.toString(),
      updated_at: map['updated_at']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "id": id,
      "name": name,
      "slug": slug,
      "status": status,
      "updated_at": updated_at,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
