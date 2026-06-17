part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AttributeGroupsUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final int? position;

    AttributeGroupsUpdateRequest({
        this.code,
        this.labels,
        this.position,
    });

    factory AttributeGroupsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AttributeGroupsUpdateRequest(
            code: map['code']?.toString(),
            labels: map['labels'],
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "labels": labels,
            "position": position,
        };
    }
}
