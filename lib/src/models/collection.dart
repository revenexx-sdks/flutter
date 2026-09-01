part of '../../models.dart';

/// A Typesense collection definition, passed through from Typesense. `name` is rewritten back to the tenant's public collection name.
class Collection implements Model {
    /// 
    final String? default_sorting_field;

    /// 
    final bool? enable_nested_fields;

    /// 
    final List<CollectionField>? fields;

    /// The public collection name.
    final String? name;

    /// Documents currently indexed.
    final int? num_documents;

    final Map<String, dynamic> data;

    Collection({
        this.default_sorting_field,
        this.enable_nested_fields,
        this.fields,
        this.name,
        this.num_documents,
        required this.data,
    });

    factory Collection.fromMap(Map<String, dynamic> map) {
        return Collection(
            default_sorting_field: map['default_sorting_field']?.toString(),
            enable_nested_fields: map['enable_nested_fields'],
            fields: map['fields'] != null ? List<CollectionField>.from(map['fields'].map((p) => CollectionField.fromMap(p))) : null,
            name: map['name']?.toString(),
            num_documents: map['num_documents'],
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "default_sorting_field": default_sorting_field,
            "enable_nested_fields": enable_nested_fields,
            "fields": fields?.map((p) => p.toMap()).toList(),
            "name": name,
            "num_documents": num_documents,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);

    List<T> convertToFields<T>(T Function(Map) fromJson) =>
        (fields ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
