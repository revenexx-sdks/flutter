part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class CategoriesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final String? parent_id;

    /// 
    final String? path;

    /// 
    final int? position;

    /// 
    final Map? values;

    CategoriesUpdateRequest({
        this.code,
        this.labels,
        this.parent_id,
        this.path,
        this.position,
        this.values,
    });

    factory CategoriesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return CategoriesUpdateRequest(
            code: map['code']?.toString(),
            labels: map['labels'],
            parent_id: map['parent_id']?.toString(),
            path: map['path']?.toString(),
            position: map['position'],
            values: map['values'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "labels": labels,
            "parent_id": parent_id,
            "path": path,
            "position": position,
            "values": values,
        };
    }
}
