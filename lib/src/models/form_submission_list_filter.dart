part of '../../models.dart';

/// The exact-column filters this call was understood to carry, echoed with the values as they arrived. A query parameter that is not a filterable column of this entity is DROPPED rather than refused, and is simply missing here — so an empty object next to a query string that had a filter in it means the filter was misspelled, and is the only way to tell that from a filter that matched nothing.
class FormSubmissionListFilter implements Model {
    /// The `created_at` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? created_at;

    /// The `form_id` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? form_id;

    /// The `form_slug` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? form_slug;

    /// The `id` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? id;

    /// The `source` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? source;

    /// The `status` filter, verbatim as the query string carried it. A string here whatever the column's own type — and NOT necessarily one of the permitted values: `?status=zzz` is echoed back unchanged and matches nothing, which is the point of the echo.
    final String? status;

    /// The `updated_at` filter, verbatim as the query string carried it. A string here whatever the column's own type.
    final String? updated_at;

    final Map<String, dynamic> data;

    FormSubmissionListFilter({
        this.created_at,
        this.form_id,
        this.form_slug,
        this.id,
        this.source,
        this.status,
        this.updated_at,
        required this.data,
    });

    factory FormSubmissionListFilter.fromMap(Map<String, dynamic> map) {
        return FormSubmissionListFilter(
            created_at: map['created_at']?.toString(),
            form_id: map['form_id']?.toString(),
            form_slug: map['form_slug']?.toString(),
            id: map['id']?.toString(),
            source: map['source']?.toString(),
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "created_at": created_at,
            "form_id": form_id,
            "form_slug": form_slug,
            "id": id,
            "source": source,
            "status": status,
            "updated_at": updated_at,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
