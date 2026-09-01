part of '../../models.dart';

/// One search inside a federated request. `collection_name` is required on the gateway-trust path; with a `revx_` key it is optional and is forced to the key's own collection.
class MultiSearchEntry implements Model {
  /// A collection the tenant owns.
  final String? collection_name;

  /// Comma-separated document fields to omit.
  final String? exclude_fields;

  /// Comma-separated fields to facet on.
  final String? facet_by;

  /// Filter expression, e.g. `in_stock:=true && price:<100`. ANDed with the tenant filter the proxy injects.
  final String? filter_by;

  /// Comma-separated fields to group results by.
  final String? group_by;

  /// Comma-separated fields to highlight in full.
  final String? highlight_full_fields;

  /// Comma-separated document fields to return.
  final String? include_fields;

  /// Facet values to return per field.
  final int? max_facet_values;

  /// Typos tolerated per query token.
  final int? num_typos;

  /// 1-based page number.
  final int? page;

  /// Hits per page.
  final int? per_page;

  /// Whether the last token is a prefix; per-field when comma-separated.
  final String? prefix;

  /// Query text. Use `*` to match everything.
  final String? q;

  /// Comma-separated fields to search, in weight order.
  final String? query_by;

  /// Sort expression, e.g. `price:desc`.
  final String? sort_by;

  final Map<String, dynamic> data;

  MultiSearchEntry({
    this.collection_name,
    this.exclude_fields,
    this.facet_by,
    this.filter_by,
    this.group_by,
    this.highlight_full_fields,
    this.include_fields,
    this.max_facet_values,
    this.num_typos,
    this.page,
    this.per_page,
    this.prefix,
    this.q,
    this.query_by,
    this.sort_by,
    required this.data,
  });

  factory MultiSearchEntry.fromMap(Map<String, dynamic> map) {
    return MultiSearchEntry(
      collection_name: map['collection_name']?.toString(),
      exclude_fields: map['exclude_fields']?.toString(),
      facet_by: map['facet_by']?.toString(),
      filter_by: map['filter_by']?.toString(),
      group_by: map['group_by']?.toString(),
      highlight_full_fields: map['highlight_full_fields']?.toString(),
      include_fields: map['include_fields']?.toString(),
      max_facet_values: map['max_facet_values'],
      num_typos: map['num_typos'],
      page: map['page'],
      per_page: map['per_page'],
      prefix: map['prefix']?.toString(),
      q: map['q']?.toString(),
      query_by: map['query_by']?.toString(),
      sort_by: map['sort_by']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "collection_name": collection_name,
      "exclude_fields": exclude_fields,
      "facet_by": facet_by,
      "filter_by": filter_by,
      "group_by": group_by,
      "highlight_full_fields": highlight_full_fields,
      "include_fields": include_fields,
      "max_facet_values": max_facet_values,
      "num_typos": num_typos,
      "page": page,
      "per_page": per_page,
      "prefix": prefix,
      "q": q,
      "query_by": query_by,
      "sort_by": sort_by,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
