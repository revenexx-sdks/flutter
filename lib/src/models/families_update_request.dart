part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class FamiliesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final String? image_attribute;

    /// 
    final String? label_attribute;

    /// 
    final Map? labels;

    FamiliesUpdateRequest({
        this.code,
        this.image_attribute,
        this.label_attribute,
        this.labels,
    });

    factory FamiliesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return FamiliesUpdateRequest(
            code: map['code']?.toString(),
            image_attribute: map['image_attribute']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "image_attribute": image_attribute,
            "label_attribute": label_attribute,
            "labels": labels,
        };
    }
}
