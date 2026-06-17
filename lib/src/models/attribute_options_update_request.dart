part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class AttributeOptionsUpdateRequest implements Model {
    /// 
    final String? attribute_id;

    /// 
    final String? code;

    /// 
    final Map? labels;

    /// 
    final int? position;

    /// 
    final Map? swatch;

    AttributeOptionsUpdateRequest({
        this.attribute_id,
        this.code,
        this.labels,
        this.position,
        this.swatch,
    });

    factory AttributeOptionsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return AttributeOptionsUpdateRequest(
            attribute_id: map['attribute_id']?.toString(),
            code: map['code']?.toString(),
            labels: map['labels'],
            position: map['position'],
            swatch: map['swatch'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_id": attribute_id,
            "code": code,
            "labels": labels,
            "position": position,
            "swatch": swatch,
        };
    }
}
